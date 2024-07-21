class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.5.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.5.0/ogmios-v6.5.0-aarch64-macos.zip"
      sha256 "4f84c764529ff8a4a0b1be6c59f69a027ed2c529298770d5df9d967fbdfeb1a9"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.5.0/ogmios-v6.5.0-aarch64-linux.zip"
      sha256 "b0ce8bf5a3d3dc53e0be93c9813a335cc5a499c8317e489327e48aa1125dedd4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.5.0/ogmios-v6.5.0-x86_64-linux.zip"
      sha256 "723c5ba79bf816014394bfb6aceeabbf89495d2b66bd90fbbbb7cf4a88a01e00"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
