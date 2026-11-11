cask "ntbrowser" do
  arch arm: "arm64", intel: "amd64"

  version "0.2.0"
  sha256 arm:   "c895a841675180b66bb962c8e579b35f0b2107ce9faf301e277b9e905e9a611c",
         intel: "b9f9457d0e28e69888fc2a0bdb515cae5c27505eef702029f871b1f925b5eb51"

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
