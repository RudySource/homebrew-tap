class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.0/dirgo-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "63c0a81c73e380fea4df669625e0cb2635d7e6e30f44c169bee59b6fa5632ea5"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.0/dirgo-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "9866fb0b199780ebd1906ea5013ef9c6be42367d78cfa2427228c25056b49963"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.0/dirgo-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38397749f4c967beb292b24a585adb1f9fdbc4259b2970c10fb4a5d5e0e6eeed"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
