cask "pi" do
  version "1.6.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "6429287b7ae98d726ec577815d14fd680e7c587e89ecc5153b4a145dc4adba33"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "5b69cd87c3b00e74cce2d1499df3b7a1ec73632f11abf64696d110f0f4dc4192"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
