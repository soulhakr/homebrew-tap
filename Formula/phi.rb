class Phi < Formula
  include Language::Python::Virtualenv

  desc "An inspectable Agent Harness, built from scratch in Python"
  homepage "https://singularitycoding.github.io/phi/"
  url "https://github.com/SingularityCoding/phi/archive/d5cdd334232e6c18c863f33aa283b026cbef442c.tar.gz"
  version "0.1.0"
  sha256 "93bd3e55f7e8e40bf237da4146aec26a3eefaebbdc24f13e112be8076cb32500"
  license "MIT"
  head "https://github.com/SingularityCoding/phi.git", branch: "main"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system "#{libexec}/bin/pip", "install", "--no-cache-dir", buildpath.to_s
    bin.install_symlink "#{libexec}/bin/phi"
  end

  test do
    assert_match "phi", shell_output("#{bin}/phi --help 2>&1")
  end
end
