# typed: false
# frozen_string_literal: true

class CanvasCli < Formula
  desc "A powerful command-line interface for Canvas LMS"
  homepage "https://github.com/jjuanrivvera/canvas-cli"
  license "MIT"
  version "1.2.0"

  on_macos do
    on_intel do
      url "https://github.com/jjuanrivvera/canvas-cli/releases/download/v#{version}/canvas-cli_Darwin_x86_64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64"
    end
    on_arm do
      url "https://github.com/jjuanrivvera/canvas-cli/releases/download/v#{version}/canvas-cli_Darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jjuanrivvera/canvas-cli/releases/download/v#{version}/canvas-cli_Linux_x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
    end
    on_arm do
      url "https://github.com/jjuanrivvera/canvas-cli/releases/download/v#{version}/canvas-cli_Linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end
  end

  def install
    bin.install "canvas"
  end

  test do
    assert_match "canvas version", shell_output("#{bin}/canvas version")
  end
end
