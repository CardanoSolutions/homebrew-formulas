class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.9.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.9.0/ogmios-v6.9.0-aarch64-macos.zip"
      sha256 "189c2c552d4113dc59b696a496b3ee8be8d6de1ea0db12cbb6a40627737c505a"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.9.0/ogmios-v6.9.0-aarch64-linux.zip"
      sha256 "0c1afb67a070323fb31ec1beffc044837dea4c4fdf8410d3dd6268468fc40d5d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.9.0/ogmios-v6.9.0-x86_64-linux.zip"
      sha256 "2b483737a0d29fdb017cc20e9ee8ed0069b8c5c5be23e68fd6fb5395d59750e6"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
