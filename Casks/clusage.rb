cask "clusage" do
  version "0.1.2"
  sha256 :no_check

  url "https://github.com/seventwo-studio/clusage/releases/download/v#{version}/Clusage.dmg"
  name "Clusage"
  desc "Claude usage tracking for your menu bar"
  homepage "https://github.com/seventwo-studio/clusage"

  depends_on macos: ">= :tahoe"

  app "Clusage.app"

  zap trash: [
    "~/Library/Preferences/studio.seventwo.clusage.plist",
    "~/Library/Application Support/studio.seventwo.clusage",
  ]
end
