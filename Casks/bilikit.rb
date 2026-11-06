cask "bilikit" do
  version "1.7.0,17"
  sha256 "e49d3ef4b73dd1c53ead7a95ce0253797cb07e4e091a8875c0266525c7ad64de"

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
