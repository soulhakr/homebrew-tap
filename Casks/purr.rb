cask "purr" do
  version "0.0.2"
  sha256 "d5dbd226340c219818a27ca2a5e434da3d5a3ebf5474895aaa08e2941bd59f55"

  url "https://github.com/iamarunbrahma/purr/releases/download/v#{version}/Purr.dmg"
  name "Purr"
  desc "Hold a key, speak, and your words appear in any text field"
  homepage "https://github.com/iamarunbrahma/purr"

  app "Purr.app"
end
