cask "pi" do
  version "0.85.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "b0a1a3ab9708047e31b76a27911e8b445b3e4a38e2f46a08b6635df75f3499c0"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "611290e032a47f1546bd30e12c14a59a600a24662d5239c0c159ef3c7a0ca3b0"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
