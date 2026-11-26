cask "pi" do
  version "1.6.1"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "d8fd8e24c2a5054ae383d83b26f6eb6f950edf613917e434a52394f44cd4d933"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "5c2df5744c7828cc8b78c5665a3a785cc073130005c711d35017c6a5c419169a"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
