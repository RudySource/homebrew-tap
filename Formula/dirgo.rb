class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.1/dirgo-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "fe92c4cb91a81844230c226d92f971101659b889a6e9b815e6eedd354c88bf1f"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.1/dirgo-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "3811698bdef4f4b6ff857cb7969d463fa06033511b489feac05c8852dbc172f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.1/dirgo-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8649d818bc252a80f11c5060ddb08a9d5bfb496ef8dde186787be7b84504cfb7"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
