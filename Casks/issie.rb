cask "issie" do
  arch arm: "arm64"

  version "5.3.1"
  sha256 arm: "b92c7745e15e2e1d8a56e3bdf6050355910df60114ac2db96663aa6649b30a7c"

  url "https://github.com/tomcl/issie/releases/download/v#{version}/issie-#{version}-macos-#{arch}.dmg",
      verified: "github.com/tomcl/issie/"
  name "issie"
  desc "Intuitive cross-platform hardware design application"
  homepage "https://tomcl.github.io/issie"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "issie.app"

  zap trash: "~/Library/Preferences/ISSIE.plist"
end
