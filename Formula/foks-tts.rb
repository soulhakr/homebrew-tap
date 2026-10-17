class FoksTts < Formula
  desc "Offline neural text-to-speech menu bar app for macOS with word highlighting"
  homepage "https://github.com/soulhakr/foks-tts"
  url "https://github.com/soulhakr/foks-tts/releases/download/v0.2.1/foks-tts-0.2.1.tar.gz"
  sha256 "ebd34ebeed06b216dfa89167ef05fcd9252d98f34cb2bca7e570b1ada5635140"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma
  depends_on "python@3.14"
  depends_on "uv"

  def install
    engine = libexec/"engine"

    # The voice engine: a hash-locked Python 3.14 environment and the Kokoro model at a pinned, checksummed revision.
    # install.sh does the work (requirements/core.lock with --require-hashes, model SHA-256, offline smoke test);
    # here it uses Homebrew's Python instead of downloading one, and keeps every cache inside the build directory.
    ENV["FOKS_TTS_HOME"] = engine.to_s
    ENV["UV_PYTHON_PREFERENCE"] = "only-system"
    ENV["UV_CACHE_DIR"] = (buildpath/".uv-cache").to_s
    ENV["HF_HOME"] = (buildpath/".hf").to_s
    ENV.prepend_path "PATH", formula_opt_bin("python@3.14")
    system "./install.sh", "--no-app"

    # The app, built from source and ad-hoc signed (needs the Command Line Tools, like every source build).
    system "app/build_app.sh"
    prefix.install "app/build/FOKS TTS.app"

    # A Homebrew build cannot write to the home folder, so a second step copies the app to ~/Applications
    # and registers its Services entry.
    pkgshare.install "app/install_local.sh", "uninstall.sh"
    (bin/"foks-tts-setup").write <<~SH
      #!/bin/zsh
      # Copy FOKS TTS.app to ~/Applications and register its Services-menu entry (no admin rights needed).
      case "${1:-}" in
        "")       exec "#{opt_pkgshare}/install_local.sh" "#{opt_prefix}/FOKS TTS.app" ;;
        --remove) exec "#{opt_pkgshare}/uninstall.sh" ;;
        *)        echo "usage: foks-tts-setup [--remove]"; exit 2 ;;
      esac
    SH
    chmod 0555, bin/"foks-tts-setup"
  end

  def caveats
    <<~EOS
      Install the app into ~/Applications (once, and again after each upgrade):
        foks-tts-setup

      Then open "FOKS TTS" from ~/Applications and grant Accessibility and Screen Recording
      in System Settings > Privacy & Security. The app is built here and ad-hoc signed, so macOS
      asks for the permissions again after an upgrade.

      To remove the app copy and its saved settings: foks-tts-setup --remove
      then: brew uninstall foks-tts
    EOS
  end

  test do
    assert_path_exists prefix/"FOKS TTS.app/Contents/MacOS/FOKS-TTS"
    assert_path_exists libexec/"engine/models/kokoro/config.json"
    assert_match "Python 3.14", shell_output("#{libexec}/engine/venv/bin/python --version")
    system libexec/"engine/venv/bin/python", "-c", "import mlx.core, mlx_audio, misaki, scipy"
    assert_match "usage", shell_output("#{bin}/foks-tts-setup --bogus 2>&1", 2)
  end
end
