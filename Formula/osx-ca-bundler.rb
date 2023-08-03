class OsxCaBundler < Formula
  desc "Tool that bundles together all keychain system certs into one CA bundle to be used together"
  homepage "https://github.com/SpaceGoGames/osx-ca-bundler"
  url "https://github.com/SpaceGoGames/osx-ca-bundler/archive/refs/tags/v0.0.4.tar.gz", tag: "0.0.1", revision: "e412ec537eb62c7fd28c34803a2f614649195c60"
  version "0.0.4"
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
