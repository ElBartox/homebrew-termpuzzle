cask "termpuzzle" do
  version "0.4.7"

  on_arm do
    sha256 "2a19d474c3c575116972a0e28ca12ec82ccccdf67754b25a08d96434d9cc2e98"

    url "https://github.com/ElBartox/termpuzzle-releases/releases/download/v#{version}/TermPuzzle-#{version}-arm64.dmg",
        verified: "github.com/ElBartox/termpuzzle-releases/"
  end
  on_intel do
    sha256 "34090534b3993c772f4e1a0b6fb9b70415aa2edcefc72eb9ea33ee2cf09f6a68"

    url "https://github.com/ElBartox/termpuzzle-releases/releases/download/v#{version}/TermPuzzle-#{version}.dmg",
        verified: "github.com/ElBartox/termpuzzle-releases/"
  end

  name "TermPuzzle"
  desc "Workspace manager for terminals and AI agents"
  homepage "https://termpuzzle.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :catalina

  app "TermPuzzle.app"

  zap trash: [
    "~/Library/Application Support/TermPuzzle",
    "~/Library/Caches/com.amenabar.termpuzzle",
    "~/Library/Caches/com.amenabar.termpuzzle.ShipIt",
    "~/Library/HTTPStorages/com.amenabar.termpuzzle",
    "~/Library/Logs/TermPuzzle",
    "~/Library/Preferences/com.amenabar.termpuzzle.plist",
    "~/Library/Saved Application State/com.amenabar.termpuzzle.savedState",
  ]
end
