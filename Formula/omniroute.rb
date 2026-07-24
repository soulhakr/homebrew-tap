class Omniroute < Formula
  desc "Free AI gateway: one endpoint, 290+ providers with auto-fallback and token compression"
  homepage "https://omniroute.online"
  url "https://registry.npmjs.org/omniroute/-/omniroute-3.8.48.tgz"
  sha256 "b095f2c8621dfb375a4910ed62430e873eda6eeb919b5654d407b21c59383255"
  license "MIT"
  version "3.8.48"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omniroute --version 2>&1")
  end
end
