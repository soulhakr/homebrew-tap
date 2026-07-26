cask "pi" do
  version "0.82.1"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "ca5b660ee0dbf2b4169f69753cf60f4e0edddff4a49427cdd34660e41280249f"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "a28cd67f9397a5ad99f9387713bf1c134b747d4b6cb25e00db4f7d009ee9f8c2"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
