class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.6.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.0/ogmios-v6.6.0-aarch64-macos.zip"
      sha256 "829141099c6a466fe39b24db98ff80d0eac576b14712f3625a36d07bbb0deecb"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.0/ogmios-v6.6.0-aarch64-linux.zip"
      sha256 "083942cabbb8410ca7f2e4a468240de39338f82b047d740cac93de424ad1c0b4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.6.0/ogmios-v6.6.0-x86_64-linux.zip"
      sha256 "9131ce7b917f0bbf0ba67ddb95166a436e841d1977e05acfdd5443d7335eb8fb"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
