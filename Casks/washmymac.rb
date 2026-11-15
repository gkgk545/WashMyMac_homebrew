cask "washmymac" do
  version "0.1.209"
  sha256 "ad0088b2a454dff5b75c871ab8df84904398eb9761ee7d502a17a5a5c6b93caa"

  url "https://github.com/gkgk545/WashMyMac_homebrew/releases/download/v0.1.209/WashMyMac-0.1.209.zip"
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
