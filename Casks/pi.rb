cask "pi" do
  version "0.86.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "9a84969c5365be16e593737b898e0ded756482c189bcfcd28e41a64f7f0314b0"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "efbb5052e8f3de68d6882b002f639449dceeb56c61aa83ab08e3ff38581ac555"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
