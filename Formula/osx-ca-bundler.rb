class OsxCaBundler < Formula
  desc "Tool that bundles together all keychain system certs into one CA bundle to be used together"
  homepage "https://github.com/SpaceGoGames/osx-ca-bundler"
  url "https://github.com/SpaceGoGames/osx-ca-bundler/archive/v1.0.0.tar.gz"
  sha256 "eff396c7efa9a5ebf31721868d12f124b6a0c9cdca80c7a5c08291374daf5dd7"
  version "1.0.0"
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
