cask "sirvoice" do
  version "1.0.24"
  sha256 "6f7ebb56778d9df602b33350cab6b0bfb7c74d2c7e6a880a6e12ab32221bf23b"

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
