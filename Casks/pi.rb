cask "pi" do
  version "0.84.1"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "683c84261f40b870b4a7ccf181a48ad6ecd71853b0112d1bb617539530c6121d"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "f9060962b9cca5438d7fb97b60adae9c9302503d39b68d8aea8b891e2eb3e786"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
