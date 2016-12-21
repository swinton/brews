class Pdfify < Formula
  desc ""
  homepage ""
  url "https://github.com/swinton/pdfify/archive/0.1.tar.gz"
  version "0.1"
  sha256 "2d53bf76af0131241dc4b2231df058d4ab7641ea3850ed81893fa47dc9e20eaf"

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
