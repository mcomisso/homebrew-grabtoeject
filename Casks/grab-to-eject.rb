cask "grab-to-eject" do
  version "1.0.2"
  sha256 "6bcc8f5a8ea2bb68fdab01d770fb25d5cd2e9a16b259be3d6e1c3e9de39135e2"

  url "https://github.com/mcomisso/ShakeToEject/releases/download/v#{version}/ShakeToEject-#{version}.zip",
      verified: "github.com/mcomisso/ShakeToEject/"
  name "Grab to Eject"
  desc "Safely ejects external drives when it detects you picking up your laptop"
  homepage "https://github.com/mcomisso/ShakeToEject"

  # livecheck scans GitHub Releases for the newest vX.Y.Z tag.
  livecheck do
    url :url
    strategy :github_latest
  end

  # The app uses Sparkle for in-app updates, so Homebrew does not need
  # to manage upgrades. This stanza also silences the "the app has a
  # mechanism for checking for updates" audit warning.
  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  # The bundle on disk is ShakeToEject.app (the product's codebase
  # name); Finder displays "Grab to Eject" via CFBundleDisplayName.
  app "ShakeToEject.app"

  zap trash: [
    "~/Library/Application Support/com.mcsoftware.ShakeToEject",
    "~/Library/Caches/com.mcsoftware.ShakeToEject",
    "~/Library/Caches/Sparkle_com.mcsoftware.ShakeToEject",
    "~/Library/Preferences/com.mcsoftware.ShakeToEject.plist",
    "~/Library/Saved Application State/com.mcsoftware.ShakeToEject.savedState",
  ]
end
