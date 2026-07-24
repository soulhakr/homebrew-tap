cask "pi" do
  version "0.82.0"

  on_arm do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-arm64.tar.gz"
    sha256 "6205debd0071ff56d765e0ee941f087f9a18d1f6c2f7dea17bdc8f97ff3cf9c1"
  end

  on_intel do
    url "https://github.com/earendil-works/pi/releases/download/v#{version}/pi-darwin-x64.tar.gz"
    sha256 "a7541c599f5c235c9cef8ba5086986c0f8897a0c6a9389a2b8b1b3a59b76bfc8"
  end

  name "Pi"
  desc "Minimal terminal coding agent harness"
  homepage "https://pi.dev"

  binary "pi/pi"  # extracted tarball has a pi/ subdirectory containing the binary
end
