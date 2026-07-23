cask "attache" do
  version "0.6.10"
  sha256 "7b470a6e9bb7861b40b3a9c2fbf03031ed4be7d143a1a440d5c276ff7b0636c4"

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
