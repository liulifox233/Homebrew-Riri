cask "Riri" do
  version "1.0.3"
  arch arm: "ARM64", intel: "X64"
  sha256 arm:   "4e5fbb33ef1cd9c628108d5213b07a0be2d24f1f2af1c7c1bd321c11ee08def6",
         intel: "61388ba01d0dbdbedcc13a699287843e21e39a8b70b5b8f0f076479ffca97fb9"

  url "https://github.com/liulifox233/Riri/releases/download/v#{version}/Riri-macOS-#{arch}.zip",
      verified: "github.com/liulifox233/Riri"
  name "Riri"
  desc "A simple menubar tool to display lyrics for Apple Music in MacOS."
  homepage "https://github.com/liulifox233/Riri"

  app "Riri.app"

  zap trash: [
    "~/Library/Application Support/Riri",
    "~/Library/Caches/Riri",
    "~/Library/HTTPStorages/Riri.binarycookies",
    "~/Library/Preferences/Riri.plist",
  ]
end