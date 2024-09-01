class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.6.1"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.1/ogmios-v6.6.1-aarch64-macos.zip"
      sha256 "0421f88aab73515da3c2f93fb26a7f7c047c5e03abbdbf4f63aa27a43ede431b"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.1/ogmios-v6.6.1-aarch64-linux.zip"
      sha256 "0b3e9c2d22333cb457683ffc2f5054d61999d25726a4e6bd7a8bffeec817ce7b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.1/ogmios-v6.6.1-x86_64-linux.zip"
      sha256 "8b9ef6a24b089a5041769b650c4c255b5dc55039111ac354eae20d95bce69b0e"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
