class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.6.2"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.2/ogmios-v6.6.2-aarch64-macos.zip"
      sha256 "61bf93d2df15e44f4ccd0deb61dbb10727a722b93537285886f0c5731f8325d6"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.2/ogmios-v6.6.2-aarch64-linux.zip"
      sha256 "ca394fd619c496ccecbbeccebf7e24b96c898eeb81f54f25967077340fd1f054"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.2/ogmios-v6.6.2-x86_64-linux.zip"
      sha256 "71e49cd2b34fc807e5e3ef58510df08e6d331fea75e2f9182e17ac39d920b808"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
