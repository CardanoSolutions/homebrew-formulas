class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.13.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.13.0/ogmios-v6.13.0-aarch64-macos.zip"
      sha256 "26ff692d393e538c55ee4ea9aae495379eb1db3c045921c4dbc3bf0a65cedf09"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.13.0/ogmios-v6.13.0-aarch64-linux.zip"
      sha256 "6fff5a57c6603f1adc26d71375a2ff00d2ca2900df9349d318603b8e968bcb37"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.13.0/ogmios-v6.13.0-x86_64-linux.zip"
      sha256 "af1eeec42dd1fc5cb7eb1fa3789b44a01f6c00a6e79250ed2fb5f00a057c802b"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
