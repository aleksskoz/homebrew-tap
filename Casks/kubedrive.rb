cask "kubedrive" do
  version "0.6.8"
  sha256 "465609b8308bdd5b061216914991eb2c4aacd97fff6c96a6daf5a38ece1d0c48"

  url "https://github.com/kubedrive/kubedrive/releases/download/v#{version}/KubeDrive-#{version}.dmg"
  name "KubeDrive"
  desc "Desktop client for Kubernetes"
  homepage "https://github.com/kubedrive/kubedrive"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

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
