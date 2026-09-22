cask "pi" do
  version "0.87.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "fd0409795d03f89ad5d57a772f3a45cc23373e0e24148cd44a08d78109f6093e"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "cd5bd2df345e4f22eee59098d52046420d2c7829687adb1932f65eace7a54852"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
