cask "kubedrive" do
  version "0.5.6"
  sha256 "701d15a8fcacfd9b677cd9052e24545e9cb8d2bb3be8dc39b28c1247bf95ff51"

  url "https://github.com/aleksskoz/kubedrive/releases/download/v#{version}/KubeDrive-#{version}.dmg"
  name "KubeDrive"
  desc "Desktop client for Kubernetes"
  homepage "https://github.com/aleksskoz/kubedrive"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "KubeDrive.app"

  zap trash: [
    "~/Library/Application Support/KubeDrive",
    "~/Library/Caches/com.akstudio.kubedrive",
    "~/Library/HTTPStorages/com.akstudio.kubedrive",
    "~/Library/Preferences/com.akstudio.kubedrive.plist",
    "~/Library/Saved Application State/com.akstudio.kubedrive.savedState",
    "~/Library/WebKit/com.akstudio.kubedrive",
  ]
end
