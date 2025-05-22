class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.12.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.12.0/ogmios-v6.12.0-aarch64-macos.zip"
      sha256 "736559386d2c974df99efe37f947ef16ef61fa05ae1f725f7d8e7ce159e7fc8e"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.12.0/ogmios-v6.12.0-aarch64-linux.zip"
      sha256 "c258ef7f4387d0a7a06568995d915b7a74b91356b2bfaf85f87032df4dd213e3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.12.0/ogmios-v6.12.0-x86_64-linux.zip"
      sha256 "4adb11a0bc1689bab7bd4630e84b76b28227f33d6d25e2e55a1eade39ccf65b6"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
