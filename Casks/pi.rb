cask "pi" do
  version "0.84.3"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "0120c9f99ea05fe801e6e7c2c9d91dd65636563ca0803711b37b9f32920d4b63"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "b99706b3254faaf3695395ecb69cb7e1f4d4822bd3f832e6d1f2636d896b6bde"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
