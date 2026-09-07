class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.2/dirgo-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "1556b7f7c3806fbce09f6d3b34e4d0c23e29dd732431047dc74a4bc9ce110aeb"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.2/dirgo-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "865c4954f240369a368d42492d84dc0cba5e69a636331eeab70f71adac47a4cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.2/dirgo-v0.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59d9897f6f0a8a1b149ee28b5bca071c626ee75f3c57ecffedeaa1a7dad1d805"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
