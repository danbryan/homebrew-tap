cask "attache" do
  version "0.1.2"
  sha256 "9d32750a3603f25e1263c45c87866bd875b56a70d5c6a35da9295490050c2601"

  url "https://github.com/danbryan/attache/releases/download/v#{version}/Attache.dmg",
      verified: "github.com/danbryan/attache/"
  name "Attaché"
  desc "Speaks your AI agents' updates out loud, for Codex and Claude Code"
  homepage "https://attache.fm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Attache.app"

  zap trash: [
    "~/Library/Application Support/Attache",
    "~/Library/Application Support/Attache Backups",
    "~/Library/Caches/com.bryanlabs.attache",
    "~/Library/Preferences/Attache.plist",
    "~/Library/Preferences/com.bryanlabs.attache.plist",
  ]
end
