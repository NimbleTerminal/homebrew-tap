cask "ntbrowser" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "cff0920ebbeae62e175c5b33f23afdf351c0d9a32792ebc86b1210ebcccb02cf",
         intel: "ed9d329a534dee9b2ea16e9f5c30f82d7c2ccc9b5ddedd889a8bc03b7d74175c"

  url "https://github.com/NimbleTerminal/ntbrowser/releases/download/v#{version}/ntbrowser_#{version}_darwin_#{arch}.tar.gz"
  name "ntbrowser"
  desc "Terminal web browser with confined media playback"
  homepage "https://github.com/NimbleTerminal/ntbrowser"

  binary "ntbrowser"
  binary "ntbrowser-media"

  caveats <<~EOS
    For video playback, install libmpv with: brew install mpv
    Keep ntbrowser and ntbrowser-media installed together.
  EOS
end
