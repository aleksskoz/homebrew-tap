cask "otdeck" do
  version "0.7.0"
  sha256 "844689ac40d87e3a466e07aef4317bb4c3ba437e7bdb042bac6442faf23f5db9"

  url "https://github.com/otdeck/releases/releases/download/v#{version}/OTDeck-#{version}.dmg",
      verified: "github.com/otdeck/releases/"
  name "OTDeck"
  desc "Workbench for MQTT, Modbus and OPC UA with a built-in MCP server"
  homepage "https://otdeck.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "OTDeck.app"
  binary "#{appdir}/OTDeck.app/Contents/MacOS/otdeck-mcp"

  zap trash: [
    "~/Library/Application Support/OTDeck",
    "~/Library/Caches/com.akstudio.otdeck",
    "~/Library/HTTPStorages/com.akstudio.otdeck",
    "~/Library/Preferences/com.akstudio.otdeck.plist",
    "~/Library/Saved Application State/com.akstudio.otdeck.savedState",
    "~/Library/WebKit/com.akstudio.otdeck",
  ]
end
