cask "otdeck" do
  version "0.5.0"
  sha256 "f9537861f316930a60dbca1be494135931c5f0b58791743bc569bd6a049424dc"

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
