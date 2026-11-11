cask "pi" do
  version "1.5.2"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "56b5e194d485ced555667b8ba3276157a8272e9ecde9e001e428af80985bdd9b"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "f997a088613514ac97d913aeea7642094d84fe6d46854ff7e64e2c12e536dc50"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
