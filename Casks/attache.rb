cask "attache" do
  version "0.3.1"
  sha256 "fb5dd67b8697572e798146959c77a8ff49ce2dbe7a612d8f3c44e9e88bb266cd"

  url "https://github.com/danbryan/attache/releases/download/v#{version}/Attache.dmg",
      verified: "github.com/danbryan/attache/"
  name "Attaché"
  desc "Speaks your AI agents' updates out loud, for Codex and Claude Code"
  homepage "https://attache.bryanlabs.net/"

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
