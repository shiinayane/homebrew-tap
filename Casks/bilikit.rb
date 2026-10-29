cask "bilikit" do
  version "1.6.0,14"
  sha256 "5942aebbf52d81fcdd6801025629bd7baf0e2ed07173235107942800c6091642"

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
