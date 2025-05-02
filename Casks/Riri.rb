cask "riri" do
  version "2.0.0"
  arch arm: "ARM64", intel: "X64"
  sha256 arm:   "cafe18e053cd19c04ec69c18c0391aaf99397dfb84df284e67f8e084f58ded2a",
         intel: "527eba74dcd48d326515e265830eb244bc9f0d4bf65cc9acdcf13e94dd6f823f"

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