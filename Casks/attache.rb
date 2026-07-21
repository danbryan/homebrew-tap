cask "attache" do
  version "0.6.3"
  sha256 "4653ac32220263b778aac69a091becc86475ebe7fb0fca5d1f615fba236bfa4a"

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
    "~/Library/Application Support/Attache Backups",
    "~/Library/Application Support/Attache",
    "~/Library/Caches/com.bryanlabs.attache",
    "~/Library/Preferences/Attache.plist",
    "~/Library/Preferences/com.bryanlabs.attache.plist",
  ]
end
