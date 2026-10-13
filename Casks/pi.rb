cask "pi" do
  version "1.2.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "abddf7688b4b6781d9113f63cd578e3c01dcdb87e71f66e7ec1c9ec6c76178d1"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "e079ff016ae78279cfbd6c1b4fffe072162f4a7bb879ad61b04e2e43bcc53455"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
