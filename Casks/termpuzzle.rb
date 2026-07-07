cask "termpuzzle" do
  version "0.4.4"

  on_arm do
    sha256 "4dd37c2de1d0949b12f6a344fbaf2fb0d9841eefc60d0f6cda479768973057b7"

    url "https://github.com/ElBartox/termpuzzle-releases/releases/download/v#{version}/TermPuzzle-#{version}-arm64.dmg",
        verified: "github.com/ElBartox/termpuzzle-releases/"
  end
  on_intel do
    sha256 "624fdd2c1b9256b73f17e445156e730a44b3445f14092b0629acacd1565c12a3"

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
