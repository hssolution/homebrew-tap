cask "dubbingmate" do
  arch arm: "arm64", intel: "x64"

  version "0.1.32"
  sha256 arm:   "d71a5e5be20273c1c4c3757b59b3a99a22d87dda8edf63a549a178a06f00474c",
         intel: "2b970f320a464555a0e328bbf5a95847fa984b6cb3cd739512dad538707c4b0e"

  url "https://dubbingmate.com/download/updates/DubbingMate-#{version}-#{arch}.dmg"
  name "DubbingMate"
  desc "Dub YouTube videos by reading subtitles aloud with on-device TTS"
  homepage "https://dubbingmate.com/"

  livecheck do
    url "https://dubbingmate.com/download/updates/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "DubbingMate.app"

  zap trash: [
    "~/Library/Application Support/DubbingMate",
    "~/Library/Caches/com.hssolution.dubbingmate",
    "~/Library/Caches/com.hssolution.dubbingmate.ShipIt",
    "~/Library/Logs/DubbingMate",
    "~/Library/Preferences/com.hssolution.dubbingmate.plist",
    "~/Library/Saved Application State/com.hssolution.dubbingmate.savedState",
  ]
end
