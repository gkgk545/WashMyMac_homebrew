cask "washmymac" do
  version "0.1.253"
  sha256 "ebce80ca69f0b7be750ad9de7b24309f298f005093770991985fdbbfb307f30c"

  url "https://github.com/gkgk545/WashMyMac_homebrew/releases/download/v0.1.253/WashMyMac-0.1.253.zip"
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
