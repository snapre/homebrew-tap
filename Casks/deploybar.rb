cask "deploybar" do
  version "0.1.21"
  sha256 "b105ab51596910a446295d3d9fee45a78662bd5d374c58fe773cf047af8b3a68"

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
