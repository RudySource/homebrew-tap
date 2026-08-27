class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.5.1/dirgo-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "2294866b51c3f8ee62e6c3cd982065c8d4d8a635eba1ec12d512a98e85d61bdc"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.5.1/dirgo-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "bcdc1492579ebd2e6f535a622854fbe4a3101c0ef2be93299dad68ebcb07fbda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.5.1/dirgo-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "691f868203b0d902eb6f31fd62f89bae1e527cedc437c679b1b375be51485b48"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
