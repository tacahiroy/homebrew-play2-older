require 'formula'

class Play2Older < Formula
  homepage 'https://www.playframework.com/'
  url 'http://downloads.typesafe.com/play/2.1.5/play-2.1.5.zip'
  sha1 '0c92e9c0c0e7ddfba0ef8a2f730c5cbcd6ebc377'

  def install
    prefix.install_metafiles
    libexec.install Dir['*']
    bin.write_exec_script libexec/'play'
  end
end
