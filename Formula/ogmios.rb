class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.11.2"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.2/ogmios-v6.11.2-aarch64-macos.zip"
      sha256 "9edb517dbcf2c04155effa21827b56c1f64737342513d57ded72fd3c4226b767"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.2/ogmios-v6.11.2-aarch64-linux.zip"
      sha256 "54a14ee2050f2f05003bf49cc64ea07f243168e3f1b49b011f55b4cad9b70f97"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.11.2/ogmios-v6.11.2-x86_64-linux.zip"
      sha256 "3e4ab29bc9009c98f72a6c8907c6fe1917ef5109a35b00f460603b3b2d965155"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
