class Inotes < Formula
  desc "Manage Apple Notes from the terminal"
  homepage "https://github.com/wangwalk/inotes"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/wangwalk/inotes/releases/download/v0.1.2/inotes-0.1.2-universal-apple-darwin.tar.gz"
    sha256 "62b7bf338cff6c633414297a1537ab32713273ec6c8047e16364f0d747ae8d28"
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
