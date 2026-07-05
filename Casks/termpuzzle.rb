cask "termpuzzle" do
  version "0.4.3"

  on_arm do
    sha256 "c6daf129dc42e1ed7bb47e0c4dbf00fc25f33b3bc0c4893b1e2eb3bd0edc9bff"

    url "https://github.com/ElBartox/termpuzzle-releases/releases/download/v#{version}/TermPuzzle-#{version}-arm64.dmg",
        verified: "github.com/ElBartox/termpuzzle-releases/"
  end
  on_intel do
    sha256 "05dad7b428ac8795e54c14a56f894d8349b19e7990ea5c9d77dd7296297f8a01"

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
