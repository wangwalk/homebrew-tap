class Inotes < Formula
  desc "Manage Apple Notes from the terminal"
  homepage "https://github.com/wangwalk/inotes"
  url "https://github.com/wangwalk/inotes/releases/download/v0.1.2/inotes-0.1.2-universal-apple-darwin.tar.gz"
  version "0.1.2"
  sha256 "62b7bf338cff6c633414297a1537ab32713273ec6c8047e16364f0d747ae8d28"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "inotes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inotes --version").strip
  end
end
