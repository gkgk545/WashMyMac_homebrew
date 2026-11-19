cask "washmymac" do
  version "0.1.248"
  sha256 "116a53f263fd56ed7018c4dfb44ab24f99d7d2330d7b3382403c473ce94f6c2d"

  url "https://github.com/gkgk545/WashMyMac_homebrew/releases/download/v0.1.248/WashMyMac-0.1.248.zip"
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
