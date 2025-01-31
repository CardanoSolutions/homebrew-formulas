class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.11.1"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.1/ogmios-v6.11.1-aarch64-macos.zip"
      sha256 "cbda83e42e948fd14ffa72077dd04aab23d863b7ed87a846955987ddac121c08"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.1/ogmios-v6.11.1-aarch64-linux.zip"
      sha256 "e89142eedbd00d3fc2b9bcaf9fdd1d7f6bd8c2d541141c345f55e2af82235fd5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.1/ogmios-v6.11.1-x86_64-linux.zip"
      sha256 "a89520a62df8ccd329d6ea3d9e638444fb606eaa5c8681b2f47b3ef3a2ba3a12"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
