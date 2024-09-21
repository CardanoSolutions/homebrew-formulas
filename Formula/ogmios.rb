class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.8.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.8.0/ogmios-v6.8.0-aarch64-macos.zip"
      sha256 "349f597298bcf8b5191965c9f229948fa52ad448bc2b9a478e54ee6bcd5b5a3e"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.8.0/ogmios-v6.8.0-aarch64-linux.zip"
      sha256 "c0fed12c546a6d29d21516c40405d6aaba0a45ee3b9078dfe79646b09b75b6dd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.8.0/ogmios-v6.8.0-x86_64-linux.zip"
      sha256 "7006817d35362dd2bc35e1fded61dcb3b7e6155b18bb6967508ef14c3e6cc171"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
