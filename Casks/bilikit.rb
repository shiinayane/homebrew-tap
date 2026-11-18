cask "bilikit" do
  version "1.9.1,23"
  sha256 "1e5e8306eaf23f604b9b0f321f08f5e5c576dbae2cde8d25e52ab4d4b2263764"

  url "https://github.com/shiinayane/BiliKit-Mac/releases/download/v#{version.csv.first}/BiliKit-#{version.csv.first}-#{version.csv.second}-arm64.dmg"
  name "BiliKit"
  desc "Native unofficial Bilibili client"
  homepage "https://github.com/shiinayane/BiliKit-Mac"

  livecheck do
    url "https://updates.shiinayane.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "BiliKit.app"

  zap trash: [
    "~/Library/Application Scripts/com.shiinayane.BiliKit",
    "~/Library/Containers/com.shiinayane.BiliKit",
  ]
end
