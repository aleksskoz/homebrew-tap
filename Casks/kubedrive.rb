cask "kubedrive" do
  version "0.5.5"
  sha256 "fd4709df91916802432d783923b6d864136dd31e1b813a62874ee3c78f6855cd"

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
