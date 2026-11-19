cask "washmymac" do
  version "0.1.243"
  sha256 "1b65fe403ba483afaa31e5a9497d07ece72c63fb9ecb7678bff99fcc84e16e68"

  url "https://github.com/gkgk545/WashMyMac_homebrew/releases/download/v0.1.243/WashMyMac-0.1.243.zip"
  name "WashMyMac"
  desc "Mac 정리 앱(베타)"
  homepage "https://github.com/gkgk545/WashMyMac_homebrew"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "WashMyMac.app"

  zap trash: [
    "~/Library/Application Support/WashMyMac",
    "~/Library/Preferences/com.washmymac.app.plist",
    "~/Library/Caches/com.washmymac.app",
  ]
end
