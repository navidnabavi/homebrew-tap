class Styl < Formula
  desc "Linter, validator, and formatter for MapLibre GL / Mapbox GL style JSON"
  homepage "https://github.com/navidnabavi/styl"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-aarch64-apple-darwin"
      sha256 "edec4e15dd7c8cdbecf6cd964e38bca20842b9048b84a76b6536faab4a590687"
    end
    on_intel do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-x86_64-apple-darwin"
      sha256 "25fbc0a59daedbeb6fe410368edbb41ffed7557398cea45b677ede004a36a747"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-aarch64-unknown-linux-gnu"
      sha256 "8e00ee84dc192b40da3fa95ae72fb6befaee4e80e15945c42748a6a84cc4889f"
    end
    on_intel do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-x86_64-unknown-linux-gnu"
      sha256 "eb06dabc2e0814abd67a1199d4d80b5a9c37d049f01c45e1438334fb7b08fd23"
    end
  end

  def install
    bin.install Dir["styl-*"].first => "styl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/styl --help")
  end
end
