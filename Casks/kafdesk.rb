cask "kafdesk" do
  version "0.2.1"
  sha256 "2d44192935b40ffd65e0b43f5425450078b44d3e391316d726466fe3f23536eb"

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
  depends_on macos: :monterey

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
