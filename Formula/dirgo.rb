class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.3/dirgo-v0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "c494fcedc2fb7d7e0061cb039b792e0e144e24346e6eb30e0b0102a1c636bfd2"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.3/dirgo-v0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "88323d44327966139bf9e26642340c01d615301c936a3480e8cbe3de2cf161b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.3/dirgo-v0.8.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c15f6b034bb92de578c5acf3ed1370b925de782d551a0160264f249da1444d2"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
