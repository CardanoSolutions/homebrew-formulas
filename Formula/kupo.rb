class Kupo < Formula
  desc "Fast, lightweight & configurable chain-index for Cardano."
  homepage "https://cardanosolutions.github.io/kupo"
  version "2.11.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.11/kupo-v2.11.0-aarch64-macos.zip"
      sha256 "f0bb7369be7af974d75db8a2eb9189c201d0ba94394f40c1c0db921a2c0e97c0"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.11/kupo-v2.11.0-aarch64-linux.zip"
      sha256 "f24bc3552333da7e7e0b976e8664324099d80e6fc018c68b90f9698c852a51e0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.11/kupo-v2.11.0-x86_64-linux.zip"
      sha256 "1646f8918ea5a0d5cecb9abd28c2e6934ed497527f19d2f33c1470093ab65df5"
    end
  end

  def install
    bin.install "bin/kupo"
  end
end
