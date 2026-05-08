cask "sirvoice" do
  version "1.0.15"
  sha256 "a2265828c104607999f1f62173b2ece02ace2e2155874b3626102aa53a2bbc89"

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
