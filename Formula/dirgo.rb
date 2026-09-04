class Dirgo < Formula
  desc "Instant directory navigation for your terminal"
  homepage "https://github.com/RudySource/Dirgo"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.0/dirgo-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e70b1223be5b6432e23b4a6483eecf8be30cbb6d23a370f94fa0358c8188ae5c"
    end

    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.0/dirgo-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "950ffbdb28e9200b70a09eff11af255af7def5e6725c4032ce5412dabf6b9e6c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RudySource/Dirgo/releases/download/v0.8.0/dirgo-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75cbf6c1657c8a8d5447bba9352d4c301c47f748e78794da7edb2d48ca5ab7a2"
    end
  end

  def install
    bin.install "dgo"
  end

  test do
    assert_match "dgo #{version}", shell_output("#{bin}/dgo --version")
  end
end
