cask "purr" do
  version "0.0.1"
  sha256 "147c0df5f48ec03c692c4d060d0ec215c094f2466c7c836eec423e92d52653b2"

  url "https://github.com/iamarunbrahma/purr/releases/download/v\#{version}/Purr.dmg"
  name "Purr"
  desc "Hold a key, speak, and your words appear in any text field"
  homepage "https://github.com/iamarunbrahma/purr"

  app "Purr.app"
end
