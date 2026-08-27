class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.5.0/dirgo-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "9d60a195beb31d8bf80d960b0b067d4467ea45bc12013bb98c86404861851d4d"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.5.0/dirgo-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "a90461b08ef90a893fd050a90c653ed034797ac934450d3c4e5d6672fda2974e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.5.0/dirgo-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6498ad514d11aec10b66a20160f690f0b97ebafecf8f5afcae3a7a913d92ce33"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
