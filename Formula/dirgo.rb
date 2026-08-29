class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.6.0/dirgo-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "919f37c5966b06fe8d40cae65e84da0b6474a683345b94c801a4435085401053"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.6.0/dirgo-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d90195130a9665ae2188fb924d778bbae81b2099eb6d961fac27238852ab759"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.6.0/dirgo-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b797a14a8d045ef93883335081afbd001be6f56dbf9c7a2f219c0e3469420b1a"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
