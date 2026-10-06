cask "clipcascade" do
  version "3.2.0"
  sha256 "8e28bf0a16b03f8673d4ed6f9536166762bdb17417831655e2a07349afd73c73"

  url "https://github.com/Sathvik-Rao/ClipCascade/releases/download/#{version}/ClipCascade-Apple_macOS.ARM_M-Series.zip"
  name "ClipCascade"
  desc "Clipboard sync across devices, with a self-hosted server"
  homepage "https://github.com/Sathvik-Rao/ClipCascade"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "ClipCascade-Apple_macOS(ARM_M-Series)/ClipCascade.app"

  caveats <<~EOS
    ClipCascade is not notarized by Apple, so macOS blocks it on first launch.
    Try to open it once, then System Settings > Privacy & Security, scroll to
    the bottom and click "Open Anyway". If that button never shows up (or macOS
    says the app is damaged), remove the quarantine flag instead:
      xattr -dr com.apple.quarantine /Applications/ClipCascade.app
  EOS
end
