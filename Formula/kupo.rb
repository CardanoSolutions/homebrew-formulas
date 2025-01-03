class Kupo < Formula
  desc "Fast, lightweight & configurable chain-index for Cardano."
  homepage "https://cardanosolutions.github.io/kupo"
  version "2.10.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.10/kupo-v2.10.0-aarch64-macos.zip"
      sha256 "ca358aaa5f3f693c82ada05998622e4ec087fd1108c327cf0cc8c040cac3e134"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.10/kupo-v2.10.0-aarch64-linux.zip"
      sha256 "8d4c63edf0d892c332ac8f7d60026e96e94e2edc2708186e970ea7d8e2a5cc08"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.10/kupo-v2.10.0-x86_64-linux.zip"
      sha256 "c903a28b7002755c3e6d953c2c09928bb6f09d8063a14c37380daaf33aeb8ba0"
    end
  end

  def install
    bin.install "bin/kupo"
  end
end
