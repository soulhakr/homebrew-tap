cask "pi" do
  version "0.99.2"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "564707a7378dae4cce29d92693b45b49d3a3a25187dddcc6d8c2e4aca4fb3719"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "afa8bda5c77b7ae1a14afe2c7a206925e89ea703a8479b4b7a743b1b52c0fd90"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
