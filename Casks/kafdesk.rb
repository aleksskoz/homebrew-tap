cask "kafdesk" do
  version "0.2.2"
  sha256 "4dca469d5fc19822960f18e3b96994c963a8d72f71bab36fc0f5a50d4f2f864e"

  url "https://github.com/kafdesk/releases/releases/download/v#{version}/KafDesk-#{version}.dmg",
      verified: "github.com/kafdesk/releases/"
  name "KafDesk"
  desc "Native desktop client for Apache Kafka with a built-in MCP server"
  homepage "https://kafdesk.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "KafDesk.app"
  binary "#{appdir}/KafDesk.app/Contents/MacOS/kafdesk-mcp"

  zap trash: [
    "~/Library/Application Support/KafDesk",
    "~/Library/Caches/com.akstudio.kafdesk",
    "~/Library/HTTPStorages/com.akstudio.kafdesk",
    "~/Library/Preferences/com.akstudio.kafdesk.plist",
    "~/Library/Saved Application State/com.akstudio.kafdesk.savedState",
    "~/Library/WebKit/com.akstudio.kafdesk",
  ]
end
