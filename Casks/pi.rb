cask "pi" do
  version "1.5.1"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "eecbee4fbb6128c625ba44ffe30cfc15884a7791d242017ba9378f57485971d5"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "9fa62a4fb68b7036c151a1c6128d8a91dd4f83f451f6b33e479ea7cb6de1a026"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
