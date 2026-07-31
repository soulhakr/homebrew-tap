cask "pi" do
  version "0.83.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "147fc3c451ec543a15102af251ce316079c8fcadfe8ae4d3ffee202346e9bed9"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "9ab12e406e545be131d1279a9a2c0d5c0d4a3c6e9d86a52700a7a135a445041b"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
