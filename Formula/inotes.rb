class Inotes < Formula
  desc "Manage Apple Notes from the terminal"
  homepage "https://github.com/wangwalk/inotes"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangwalk/inotes/releases/download/v0.1.0/inotes-0.1.0-macos-arm64.tar.gz"
      sha256 "190348cc72387d59ebb30517cc33582e3ebdc7d4a2e506b750f8645a0e006259"
    end
  end

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "inotes"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/inotes --version").strip
  end
end
