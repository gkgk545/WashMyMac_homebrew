cask "malkkeum" do
  version "1.0.0"
  sha256 "f272a1cdc5000521212374eda3272c4332249556d890a6f18e9e2f2d303ac262"

  url "https://github.com/gkgk545/WashMyMac_homebrew/releases/download/v#{version}/Malkkeum-#{version}.zip"
  name "말끔"
  name "Malkkeum"
  desc "쓸모없는 파일 정리 도구"
  homepage "https://github.com/gkgk545/WashMyMac_homebrew"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Malkkeum.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Malkkeum.app"]
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
