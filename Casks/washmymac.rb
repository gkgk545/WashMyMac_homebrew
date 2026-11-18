cask "washmymac" do
  version "0.1.237"
  sha256 "31420c47798b171bbe790e7e643d869c0c9b2a1956bbfdebd2a0aed0e1003837"

  url "https://github.com/gkgk545/WashMyMac_homebrew/releases/download/v0.1.237/WashMyMac-0.1.237.zip"
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
