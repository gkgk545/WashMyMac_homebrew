cask "washmymac" do
  version "0.1.253"
  sha256 "ebce80ca69f0b7be750ad9de7b24309f298f005093770991985fdbbfb307f30c"

  url "https://github.com/gkgk545/WashMyMac_homebrew/releases/download/v#{version}/WashMyMac-#{version}.zip"
  name "WashMyMac"
  desc "쓸모없는 파일 정리 도구(베타)"
  homepage "https://github.com/gkgk545/WashMyMac_homebrew"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "WashMyMac.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/WashMyMac.app"]
  end

  uninstall launchctl: "com.washmymac.helper",
            quit:      ["com.washmymac.app", "com.washmymac.menu"]

  zap trash: [
    "~/Library/Application Support/WashMyMac",
    "~/Library/Caches/com.washmymac.app",
    "~/Library/HTTPStorages/com.washmymac.app",
    "~/Library/Preferences/com.washmymac.app.plist",
    "~/Library/Preferences/com.washmymac.menu.plist",
    "~/Library/Saved Application State/com.washmymac.app.savedState",
  ]
end
