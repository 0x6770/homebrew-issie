cask "issie" do
  arch arm: "arm64", intel: "x86_64"

  version "4.1.3"
  sha256 arm:   "e55f3cd9190711d26425319444d2eb33f286ed1435b0aad03644ae160196f3d9",
         intel: "c8edef9e1b036a82388e2893fcb38eeb7abc8b7bbdb5edb1233b9c1595dae1b7"

  url "https://github.com/tomcl/issie/releases/download/v#{version}/issie-#{version}-#{arch}.dmg",
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
