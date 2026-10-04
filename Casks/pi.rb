cask "pi" do
  version "1.0.2"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "c2f035ea4adba87916f005c99515e3c91674b11d16ba75d95d0881e4781aa3bb"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "d54be8df33ab6a2f3457bd7de37edc947050ac4a7f043456d37e03afd15684de"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
