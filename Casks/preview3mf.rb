cask "preview3mf" do
  version "1.0.17"
  sha256 "af8408cfce9422dcdc585806ac5fcd05eb54c3535063467c724fc503b3ccacfa"

  url "https://github.com/cavoco/Preview3MF/releases/download/v#{version}/Preview3MF-v#{version}-universal.zip"
  name "Preview3MF"
  desc "Quick Look extension for previewing .3mf 3D-printing files"
  homepage "https://github.com/cavoco/Preview3MF"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Preview3MF.app"

  zap trash: [
    "~/Library/Caches/com.preview3mf.Preview3MF",
    "~/Library/Preferences/com.preview3mf.Preview3MF.plist",
    "~/Library/Saved Application State/com.preview3mf.Preview3MF.savedState",
  ]
end
