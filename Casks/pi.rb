cask "pi" do
  version "1.7.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "ff95a9ae160a55bb0417b35031a86c3fa52b39216999fba540b53568f2efc6eb"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "427d03ed20d14ddeddbe610f56cc7a493f5880f5800e0ecae174284a0a9c4691"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
