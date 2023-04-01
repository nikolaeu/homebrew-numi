class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu/numi/releases/download/preview/numi-cli-v0.6-x86_64-apple-darwin.tar.gz"
      sha256 "1a853f25a955c0c90981802901d1274aaaecdb7fe0d8481529c9fec35df46317"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu/numi/releases/download/preview/numi-cli-v0.6-aarch64-apple-darwin.tar.gz"
      sha256 "1cec5594d7483fdb7dc7329109f92a75847f49b91887eca4db690ca6d53ad570"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nikolaeu/numi/releases/download/preview/numi-cli-v0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c318ebb688fdd21920deb4ce9d9b49d86d67efd72f56b58e4af7601af40e08c"
    elsif Hardware::CPU.arm?
      url "https://github.com/nikolaeu/numi/releases/download/preview/numi-cli-v0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "380575a18bd556deac1c62e8aa2debcfa3262d8ecd56b0ad654b3414a755ade3"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
