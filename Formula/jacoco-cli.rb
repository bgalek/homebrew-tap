class JacocoCli < Formula
  desc "Native CLI for JaCoCo code coverage tools (no JVM required)"
  homepage "https://github.com/bgalek/jacoco-cli"
  license "EPL-2.0"
  version "v0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/bgalek/jacoco-cli/releases/download/v0.0.1/jacoco-cli-macos-aarch64"
      sha256 "965ab1db116ca61e92853189c758c5da8f362df1402dd858589f6677d31f2643"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bgalek/jacoco-cli/releases/download/v0.0.1/jacoco-cli-linux-aarch64"
      sha256 "b46c937078ab2211fc406c3443cc707fce47351e9a08d158a2f16451c9796e72"
    end
    on_intel do
      url "https://github.com/bgalek/jacoco-cli/releases/download/v0.0.1/jacoco-cli-linux-x86_64"
      sha256 "20a259c7c9e9d458cc15cd6752462b1c478f07f62d62261ef2826b01322af258"
    end
  end

  def install
    binary = Dir["jacoco-cli*"].first
    mv binary, "jacoco-cli"
    chmod 0755, "jacoco-cli"
    bin.install "jacoco-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jacoco-cli version")
  end
end
