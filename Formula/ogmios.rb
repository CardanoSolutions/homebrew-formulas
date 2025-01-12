class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.11.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.0/ogmios-v6.11.0-aarch64-macos.zip"
      sha256 "f28ce7ca7af7d760d241c085bb7b3b3fcce91e087de65b820e5606f0b51da624"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.0/ogmios-v6.11.0-aarch64-linux.zip"
      sha256 "6e922c8b8dd71f7cf6649a6b9e1fd7f6bdef88f712251cab28f68775edd81a04"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.0/ogmios-v6.11.0-x86_64-linux.zip"
      sha256 "ceb9b8ea1fc24e123c6552e2e1705ea38ab66bad73403d194294548953bdefdf"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
