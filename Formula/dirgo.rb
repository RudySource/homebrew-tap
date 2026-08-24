class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.3.1/dirgo-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "7dbf150176add9c092cb88ec335893762d81bfb3915b06ebe7813772d756f854"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.3.1/dirgo-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "ddf2ac920839f79246cc7ee99c3b576f725f5bd0a858302c21036e208fd21853"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.3.1/dirgo-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf9bb0a7545380a5e544c22f9d313193973f0c37eeaf538edee71a4acaa1dcd1"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
