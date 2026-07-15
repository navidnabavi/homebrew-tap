class Styl < Formula
  desc "Linter, validator, and formatter for MapLibre GL / Mapbox GL style JSON"
  homepage "https://github.com/navidnabavi/styl"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-aarch64-apple-darwin"
      sha256 "637e8a64d195b3700f3e4fb4cbe65bce63d8330a2c543c4d1517f0a4a144e9fb"
    end
    on_intel do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-x86_64-apple-darwin"
      sha256 "ddd08fb6942c31347257dac00bc4111b60d0b5ee66826ff562d978ca6477f882"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-aarch64-unknown-linux-gnu"
      sha256 "6221502e38d172a112bcd2b5846c235c13a70314733468481d55f71be564b027"
    end
    on_intel do
      url "https://github.com/navidnabavi/styl/releases/download/v#{version}/styl-v#{version}-x86_64-unknown-linux-gnu"
      sha256 "eb3c994a2746d2107e9813812f17ef0ee841cff247ada8ad1b47bce53a30acd7"
    end
  end

  def install
    bin.install Dir["styl-*"].first => "styl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/styl --help")
  end
end
