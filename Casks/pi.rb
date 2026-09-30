cask "pi" do
  version "0.99.1"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "4692aba1dcd48219b61edb4ecebc3c33f6199ebe65299228fce5ba69c31a23a6"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "9ad6fc356f4d08b9d10e8a6f929ac1ba4908dd533544ba989c54c73b92b53e13"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
