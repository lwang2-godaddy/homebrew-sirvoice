cask "sirvoice" do
  version "1.0.2"
  sha256 "a03fec1e92ecda026bbeaeac6c28537ea3a3d3d7f9577504faac71752e886ab6"

  url "https://github.com/lwang2-godaddy/sirvoice/releases/download/v#{version}/SirVoice-#{version}.dmg"
  name "SirVoice"
  desc "System-wide voice dictation for Mac powered by AI"
  homepage "https://sircharge.ai/sirvoice"

  depends_on macos: ">= :sonoma"

  app "SirVoice.app"

  zap trash: [
    "~/Library/Preferences/com.sircharge.SirVoice.plist",
    "~/Library/Application Support/SirVoice",
    "~/Library/Caches/com.sircharge.SirVoice",
  ]
end
