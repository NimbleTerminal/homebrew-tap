cask "ntbrowser" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.1"
  sha256 arm:   "0da00872324d2350101f383cffe3db644a373fbbfdb4ea3ff8714685696804cb",
         intel: "2720ad1b2d3e5273f9906aabe7ddc8cb38ae08984b54d51abba83232ac5b4523"

  url "https://github.com/NimbleTerminal/ntbrowser/releases/download/v#{version}/ntbrowser_#{version}_darwin_#{arch}.tar.gz"
  name "ntbrowser"
  desc "Terminal web browser with confined media playback"
  homepage "https://github.com/NimbleTerminal/ntbrowser"

  binary "ntbrowser"
  binary "glynx"
  binary "ntbrowser-media"

  caveats <<~EOS
    For video playback, install libmpv with: brew install mpv
    Keep ntbrowser and ntbrowser-media installed together.
  EOS
end
