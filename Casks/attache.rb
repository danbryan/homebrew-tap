cask "attache" do
  version "0.6.1"
  sha256 "7cc3f66b9cad71b70b4cf49c3282e9ca1f2dbe2f5ea78d77c41e6c6c55d891ec"

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
