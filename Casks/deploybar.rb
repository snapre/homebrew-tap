cask "deploybar" do
  version "0.1.17"
  sha256 "ce65ae16e23c75bdf8fe525afa46d51208f602c59183ea41c9f0cbbcb9ae9a84"

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
