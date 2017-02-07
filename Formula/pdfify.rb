class Pdfify < Formula
  desc ""
  homepage ""
  url "https://github.com/swinton/pdfify/archive/0.1.3.tar.gz"
  version "0.1.3"
  sha256 "bb18da173bf45f7a74654f217eb9cd445c7ebeb1a6adf6e0dc49fdcdcfe0c675"

  depends_on "pandoc"

  # TODO
  # Also depends on wkhtmltopdf

  def install
      system "gem", "install", "mustache"
      bin.install "bin/pdfify"
      lib.install Dir["lib/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test pdfify`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
