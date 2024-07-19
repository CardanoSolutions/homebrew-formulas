class Kupo < Formula
  desc "Fast, lightweight & configurable chain-index for Cardano."
  homepage "https://cardanosolutions.github.io/kupo"
  version "2.9.0"
  license "MPL-2.0"

  uses_from_macos "bzip2"
  uses_from_macos "libffi"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.9/kupo-v2.9.0-aarch64-osx.zip"
      sha256 "5b413a292cc3f9286160c9ba3964bb75dbcf31755a091719dbc986c0fd014b75"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.9/kupo-v2.9.0-aarch64-linux.zip"
      sha256 "cd4131ea1d14f8239f9ef4773cf269616d67abe3777fdee0fb716802b2db479a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CardanoSolutions/kupo/releases/download/v2.9/kupo-v2.9.0-x86_64-linux.zip"
      sha256 "fa1ee87e2ce93b7684ef95999e316ccfd0bfab5f7b2f0aeab554dad311fe579b"
    end
  end

  def install
    bin.install "bin/kupo"
  end
end
