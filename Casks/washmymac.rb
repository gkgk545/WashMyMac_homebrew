cask "washmymac" do
  version "0.1.212"
  sha256 "d4834e6f47658664b46c391666b36b198f08e45a48ea2341cac6503209a94da5"

  url "https://github.com/gkgk545/WashMyMac_homebrew/releases/download/v0.1.212/WashMyMac-0.1.212.zip"
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
