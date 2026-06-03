cask "deploybar" do
  version "0.1.18"
  sha256 "9e9ddc72c2b2981c2da2c14d3367d66f1911a41a966e7a0474be9eaf5439535a"

  url "https://github.com/snapre/DeployBar/releases/download/v#{version}/DeployBar-#{version}-macOS.zip"
  name "DeployBar"
  desc "Menu bar app for watching cloud deployment status"
  homepage "https://github.com/snapre/DeployBar"

  depends_on macos: ">= :ventura"

  app "DeployBar.app"

  zap trash: [
    "~/Library/Application Support/DeployBar",
    "~/Library/Caches/com.deploybar.app",
    "~/Library/Preferences/com.deploybar.app.plist",
  ]
end
