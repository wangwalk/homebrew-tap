class Inotes < Formula
  desc "Manage Apple Notes from the terminal"
  homepage "https://github.com/wangwalk/inotes"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/wangwalk/inotes/releases/download/v0.1.1/inotes-0.1.1-universal-apple-darwin.tar.gz"
    sha256 "aa6b40bb47b8a65de35d0995da67df455f74fb13da571cab6e8f1cb76be8fa36"
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
