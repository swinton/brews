class Pdfify < Formula
  desc ""
  homepage ""
  url "https://github.com/swinton/pdfify/archive/0.1.2.tar.gz"
  version "0.1.2"
  sha256 "93998b317f669a49e6004478fb8cd0b3dc2d4149fbf6c445fc31b640cd6f4f8c"

  depends_on "pandoc"

  # TODO
  # Also depends on wkhtmltopdf

  def install
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
