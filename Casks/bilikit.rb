cask "bilikit" do
  version "1.8.0,19"
  sha256 "8afba4005d8738380a4cb97007a92515e0298739c01e99789665a03dedfd2b1d"

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
