class Key2gif < Formula
  desc "Animated GIFs from Keynote presentations"
  homepage "https://github.com/swinton/key2gif"
  url "https://github.com/swinton/key2gif/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "2cdbfaf857559e53d15dbc2894eb9c71bb66b86f6d59830be828032f730aa840"

  depends_on "imagemagick"

  def install
      bin.install "bin/key2gif"
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
