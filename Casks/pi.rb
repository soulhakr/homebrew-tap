cask "pi" do
  version "0.81.1"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "a24834019ec02ee5a475ff1c5a5e9f838974191ba6adc4348f6e6475a7c7667b"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "ecaed0ef0fcaeff2e475294fc34b2d7de4700434ab9df23cdb0fffd9cfadf5b8"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
