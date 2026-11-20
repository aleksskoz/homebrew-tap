cask "kubedrive" do
  version "0.6.9"
  sha256 "6e994cb0cce2aa924c6f2be84fb0e14ec50fc51208e6e4a3363e297b87953655"

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
