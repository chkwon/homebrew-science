class Nextflow < Formula
  desc "Data-driven computational pipelines"
  homepage "http://www.nextflow.io/"
  # doi "10.6084/m9.figshare.1254958"
  # tag "bioinformatics"

  url "http://www.nextflow.io/releases/v0.16.4/nextflow"
  version "0.16.4"
  sha256 "3a6bec7af60e278b6e24d3e559ea0d967229b240a77eb952c426564b54c50ce4"

  head "https://github.com/nextflow-io/nextflow.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "6b27aeb8cffeb00643aefef00d30a53e46f30b23b28de2ce4432f345518d4df6" => :el_capitan
    sha256 "e97ed163b69ef65248e81a9806bd4a52def0fb39bac8a9b5589af0d76e7e7024" => :yosemite
    sha256 "86585c62ae711611b596698fa22aa938a74e4237fa01c225a4992d512dd4ad9e" => :mavericks
  end

  depends_on :java => "1.7+"

  def install
    bin.install "nextflow"
  end

  test do
    system "#{bin}/nextflow", "-download"
    system "echo", "println \'hello\' | #{bin}/nextflow -q run - |grep hello"
  end
end
