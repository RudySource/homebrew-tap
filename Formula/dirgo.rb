class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.1/dirgo-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "edd0bb5ad0b7dc28083b36bfcca6dfc2f39118ed6ca795e4cf714190137f4acd"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.1/dirgo-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "895a3b335b7d3c1a26c758dd0ef70015c6f873e1f0cba8eda07620bd725032a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.1/dirgo-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "204593d317197a1c001be1798d5ec3937244eb863787b4defd21f5fd8f24054b"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
