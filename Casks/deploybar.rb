cask "deploybar" do
  version "0.1.28"
  sha256 "9227ec68c0dbfabdcf3bb9c32841b415660df53d7d0d670d12543a6513c73ca9"

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
