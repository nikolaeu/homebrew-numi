class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu/numi/releases/download/preview/numi-cli-v0.5-x86_64-apple-darwin.tar.gz"
      sha256 "d4edac816405708eae6cceb9871be8cfb8b528dc4334061d0dbc9e156d0f581d"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu/numi/releases/download/preview/numi-cli-v0.5-aarch64-apple-darwin.tar.gz"
      sha256 "bc0d402ced11b025ab78139ec00d0322cda8690806f6b50c9ccf9f00bb4953fe"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu/numi/releases/download/preview/numi-cli-v0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee72a0482409d43e7c76f0c04f95536675bcb96104129e3d0c3a832ead6a22eb"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu/numi/releases/download/preview/numi-cli-v0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e206676581a4ac4caffc716fb5b253985dbf5b7c7a4a33b7343bf93abca497b5"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
