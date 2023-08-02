class OsxCaBundler < Formula
  desc "Tool that bundles together all keychain system certs into one CA bundle to be used together"
  homepage "https://github.com/SpaceGoGames/osx-ca-bundler"
  url "https://github.com/SpaceGoGames/osx-ca-bundler"
  version "0.0.1"
  sha256 "a4d2d61f14a2eb1eb8e042b2d35642d7c52558fd5b5fbfdc5e5ddddb2b62b07e"
  license "MIT"

  depends_on xcode: [">= 14.3", :build]
  depends_on macos: [
    :catalina,
    :big_sur,
    :monterey
    :ventura
  ]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "true"
  end
end
