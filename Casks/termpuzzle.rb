cask "termpuzzle" do
  version "0.6.0"

  on_arm do
    sha256 "7137709d866d739aa05e16ec8b0cc5676a2c4c46e0c85d908afc443c9df8ce6e"

    url "https://github.com/ElBartox/termpuzzle-releases/releases/download/v#{version}/TermPuzzle-#{version}-arm64.dmg",
        verified: "github.com/ElBartox/termpuzzle-releases/"
  end
  on_intel do
    sha256 "17a3a1e5911d300d22c6325acd0a4f7611e899b4bb96f9915b3058682a46304f"

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
