cask "pi" do
  version "0.86.1"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "03bd097ad4540ae4c3d9c1b5b19c517047cda0f1506bfcb992b17308460b0383"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "74b0262948651f70c6d85a52043985e8fce2c89f1cd3a6f08f81d9cc799ec4a4"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
