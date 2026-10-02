cask "pi" do
  version "1.0.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "97291e7d2eb2d7d95ab1f67d26de7902302201bc8786c132bbbc9e53fa8526cc"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "62fb78fcdbc7c0dbd21044dd44bfb3af20df447285bb55e9debf86ff4838776d"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
