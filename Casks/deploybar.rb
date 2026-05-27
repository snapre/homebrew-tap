cask "deploybar" do
  version "0.1.14"
  sha256 "fbf51e4835d1e31d6e8d2faab63a5dc1c35e21a7ccdde10ac099eaa446b3e78b"

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
