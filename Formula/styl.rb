class Styl < Formula
  desc "Linter, validator, and formatter for MapLibre GL / Mapbox GL style JSON"
  homepage "https://github.com/navidnabavi/styl"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-aarch64-apple-darwin"
      sha256 "0a7a2deb42f8faad0a16fa695b3816e17aee23a73baf93f574e7bc014c3f8fdb"
    end
    on_intel do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-x86_64-apple-darwin"
      sha256 "0be57f53fbf29d4cb9c3db5d76247e869e71f06c78911df5922d36904a3d882c"
    end
  end

  def install
    bin.install Dir["styl-*"].first => "styl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/styl --help")
  end
end
