cask "pi" do
  version "1.0.4"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "717dcd38a03849e919f9dec9daa96f5ca102e15ea33d804e5db57b1d47e513bc"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "665022918678542dd7c87fe7b0da70d2a3dcd926bc6ff4cc712308f2ca313358"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
