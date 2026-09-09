class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.4/dirgo-v0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "ecaad1df08a630f98544a9d018eac28b270e2c11d78c6c53d0806dc580b7898d"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.4/dirgo-v0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "4c9a3d40a598ff59cbf9f7e76b184629a131fa060d02bd3d4602b2b388928560"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.4/dirgo-v0.8.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6839a5407d3a10eb6a1e2e0df176a07d3449b24c4182ab7b801b5afbb4fa5115"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
