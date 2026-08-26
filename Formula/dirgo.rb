class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.4.0/dirgo-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "45ccfb6162651bacc26c1be2b932acad4e041bd4f7c06da27a6bd5811589b0f0"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.4.0/dirgo-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "a60c02abc04e70e0521b471bbb17146e277930c686be6fb21fff9e3a9498ab60"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.4.0/dirgo-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27e9a50f05d9d222da71404599e834aa7541d67ffe5aaccac81a04c84744c2f0"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
