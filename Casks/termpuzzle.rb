cask "termpuzzle" do
  version "0.7.2"

  on_arm do
    sha256 "2b567de213e78ee67b10daa340d5bdaf9a190c62f87bba7a7a9f161d15c945f6"

    url "https://github.com/ElBartox/termpuzzle-releases/releases/download/v#{version}/TermPuzzle-#{version}-arm64.dmg",
        verified: "github.com/ElBartox/termpuzzle-releases/"
  end
  on_intel do
    sha256 "d9816ff09542d6c110e07abe967db757a735cf6dc0dc545d523228818caced54"

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
