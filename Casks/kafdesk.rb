cask "kafdesk" do
  version "0.2.5"
  sha256 "985f2787d07da93bd451a1900a557d36a5f3fd7aa233e7da7221437461bcda49"

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
