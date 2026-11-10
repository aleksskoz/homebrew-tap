cask "otdeck" do
  version "0.8.2"
  sha256 "3f4ba7a4cafd36f3cd2c138ef8a150862fd6684037661564a66d6defed481169"

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
