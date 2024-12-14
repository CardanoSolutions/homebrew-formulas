class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.10.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.10.0/ogmios-v6.10.0-aarch64-macos.zip"
      sha256 "be15b9e36a9a9df9a85f696c1a0c0c1413270cc45292c0ac79d93a5a585400ae"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.10.0/ogmios-v6.10.0-aarch64-linux.zip"
      sha256 "5fa0b93a6d8bf6cd2027b8fab6ff4d276da6899e8f1e050b31b684932fcab337"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.10.0/ogmios-v6.10.0-x86_64-linux.zip"
      sha256 "de1a7c25aaa1555705b62b6fd5ebc411535bfcb8e7da2995812e9cfc668f460b"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
