cask "pi" do
  version "null"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 ""
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 ""
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
