cask "pi" do
  version "0.87.1"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "4f8d288b78c9768d3a4ac6f61f06cd34394b82ac17d5b42d1e44a437add401b7"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "01d8ee28d7114fec4f4eeedbb7561f790853040e9bfbdeebe79437ab66ea51f5"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
