class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.3.0/dirgo-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ec325008699db6b864f9c07acec44766061d166c4575199134759707b05440f0"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.3.0/dirgo-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "7fc71c158e628bee8484a654cc70a4f7479b39c38a921297a90c8f2d6428a392"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.3.0/dirgo-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d44451402dcb5e5f1b5c7b20f2b358fc3b31f791ce5d663c2d3be25910f486d"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
