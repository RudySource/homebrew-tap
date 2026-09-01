class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.0/dirgo-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "96dd9ef5e0c8b7252809473ef2fe815ce16555d21264c7ce2cfbaa45c80e0ede"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.0/dirgo-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "b4b166d89e9a3215af75fddd1bbacd08ec5e78c4d4b30b7f97fe6f4ad81d5d8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.7.0/dirgo-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff16bcb416cf5ea809119ec9b5043a04412713c2df78abe9f065397c10e42b7c"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
