cask "sirvoice" do
  version "1.0.12"
  sha256 "22f3ac90cb156586b4765a354bb14878040e18ac4bd7a69c2797ae22ab73fa19"

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
