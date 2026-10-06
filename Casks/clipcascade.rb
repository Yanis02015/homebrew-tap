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
    ClipCascade is not signed by Apple. On first launch macOS blocks it:
    open System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
