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
    system "#{bin}/pdfify"
  end
end
