class Ogmios < Formula
  desc "A WebSocket JSON/RPC bridge for Cardano."
  homepage "https://ogmios.dev"
  version "6.7.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.7.0/ogmios-v6.7.0-aarch64-macos.zip"
      sha256 "3911a23e5b53bbfc70310e776e4f2ce1b555a9176f39fb67aee0830979860b3f"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.7.0/ogmios-v6.7.0-aarch64-linux.zip"
      sha256 "ff85b0860c1e0999a244f1bea3b3c3bd0face02bafda6cce47085ffc9ecf84d6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/ogmios/releases/download/v6.7.0/ogmios-v6.7.0-x86_64-linux.zip"
      sha256 "8b69971ef7961d8ec7dbd4245f9152213ee8f4f07694a4198cfbae08460cfc9e"
    end
  end

  def install
    bin.install "bin/ogmios"
  end
end
