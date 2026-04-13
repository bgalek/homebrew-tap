class JacocoCli < Formula
  desc "Native CLI for JaCoCo code coverage tools (no JVM required)"
  homepage "https://github.com/bgalek/jacoco-cli"
  license "EPL-2.0"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/bgalek/jacoco-cli/releases/download/#{version}/jacoco-cli-macos-aarch64"
      sha256 "TODO"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bgalek/jacoco-cli/releases/download/#{version}/jacoco-cli-linux-aarch64"
      sha256 "TODO"
    end
    on_intel do
      url "https://github.com/bgalek/jacoco-cli/releases/download/#{version}/jacoco-cli-linux-x86_64"
      sha256 "TODO"
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
