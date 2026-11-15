cask "nitsync" do
  version "1.1.2"
  sha256 "6b66cfbac986a76de0a3b06c17e56ca5a4dfb46f10ec1a360e662cee1fb7824f"

  url "https://github.com/shiinayane/NitSync/releases/download/v#{version}/NitSync-#{version}.zip"
  name "NitSync"
  desc "Match an external monitor's brightness to the built-in display in nits"
  homepage "https://github.com/shiinayane/NitSync"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "NitSync.app"

  uninstall quit: "local.nitsync"

  zap trash: "~/Library/Preferences/local.nitsync.plist"

  caveats <<~EOS
    If you used color calibration, put the original color profiles back
    before uninstalling, with the calibrated displays connected:
      open -a NitSync --args --reset-color
  EOS
end
