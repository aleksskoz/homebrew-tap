cask "kubedrive" do
  version "0.4.2"
  sha256 "40be4e8a44536b5d0f907dcacc54ca19fee420d58012064ab9d082356683683c"

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
