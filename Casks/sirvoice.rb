cask "sirvoice" do
  version "1.0.11"
  sha256 "5ee6453d51d8841b05455232a4c1eaead4918bb5f77c7986f78556aa88e3bc7d"

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
