class Styl < Formula
  desc "Linter, validator, and formatter for MapLibre GL / Mapbox GL style JSON"
  homepage "https://github.com/navidnabavi/styl"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-aarch64-apple-darwin"
      sha256 "PLACEHOLDER_ARM64"
    end
    on_intel do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-x86_64-apple-darwin"
      sha256 "PLACEHOLDER_X86_64"
    end
  end

  def install
    bin.install Dir["styl-*"].first => "styl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/styl --help")
  end
end
