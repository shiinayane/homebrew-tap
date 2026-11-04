cask "bilikit" do
  version "1.6.2,16"
  sha256 "1b3f35ac3bf2a7d6cbbe18aa61984011d0447fa182e95624526ae2b903722eae"

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
