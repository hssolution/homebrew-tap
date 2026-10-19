cask "dubbingmate" do
  arch arm: "arm64", intel: "x64"

  version "0.1.31"
  sha256 arm:   "df5dcf1b34be086de12a354399daaf39cbf40c298440678bd1d32691bee4ee94",
         intel: "b41605c58033c850e2e413f33125f3b8a659b825d3a13d3efcf8c4f2a879c06d"

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
