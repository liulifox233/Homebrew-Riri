cask "riri" do
  version "2.0.3"
  arch arm: "ARM64", intel: "X64"
  sha256 arm:   "1a037ed27cc5c181c1d05673c5932b74db1d7556b8526a5890b9e5da87c9fa9a",
         intel: "b24c200a3262d9c9d48c3b04cf6b85997b5e900670bcf63350b9369489a0ebff"

  url "https://github.com/liulifox233/Riri/releases/download/v#{version}/Riri-macOS-#{arch}.zip",
      verified: "github.com/liulifox233/Riri"
  name "Riri"
  desc "A simple menubar tool to display lyrics for Apple Music in MacOS."
  homepage "https://github.com/liulifox233/Riri"

  livecheck do
    url "https://api.github.com/repos/liulifox233/Riri/releases"
    regex(/"tag_name":\s*"v?(\d+(?:\.\d+)+)"/)
  end

  app "Riri.app"

  zap trash: [
    "~/Library/Application Support/Riri",
    "~/Library/Caches/Riri",
    "~/Library/HTTPStorages/Riri.binarycookies",
    "~/Library/Preferences/Riri.plist",
  ]
end