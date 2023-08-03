class OsxCaBundler < Formula
  desc "Tool that bundles together all keychain system certs into one CA bundle to be used together"
  homepage "https://github.com/SpaceGoGames/osx-ca-bundler"
  url "https://github.com/SpaceGoGames/osx-ca-bundler/archive/v0.0.5.tar.gz"
  sha256 ""
  version "0.0.5"
  license "MIT"

  depends_on xcode: [">= 14.3", :build]
  depends_on macos: [
    :catalina,
    :big_sur,
    :monterey,
    :ventura
  ]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "true"
  end
end
