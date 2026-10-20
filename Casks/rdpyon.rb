cask "rdpyon" do
  version "1.0.1"
  sha256 "d343430aa6a5473ed37d81338419acb6c3be6c1d28325c6b34da34c07e1c97f6"

  url "https://rdpyon.com/download/RDPyon-#{version}.dmg"
  name "RDPyon"
  desc "Remote Desktop (RDP) server"
  homepage "https://rdpyon.com/"

  livecheck do
    url "https://rdpyon.com/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "RDPyon.app"

  zap trash: [
    "~/Library/Application Support/RDPyon",
    "~/Library/Caches/com.macos-rdp.server",
    "~/Library/Preferences/com.macos-rdp.server.plist",
  ]
end
