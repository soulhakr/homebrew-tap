cask "pi" do
  version "1.4.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "79d9979d76a2a5adb7c28e27e9b44629928ccd0dc9fbb6ae7217860bd5e8be5d"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "1bdefc9e1074c1de458ea9f2e43e6013ce49cd05326009b3de144037036585e2"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
