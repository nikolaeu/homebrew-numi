class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://files.numi.app/cli/v0.14.2/numi-cli-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "8a7a12718014740e052f7e2022c2d9d54cf50f162d52112191b5b51d574c7397"
    elsif Hardware::CPU.arm?
      url "https://files.numi.app/cli/v0.14.2/numi-cli-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "9194fb1bcfdb7274f6a0385841616614a26d5be19044d3c7c141df6ccde468c2"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://files.numi.app/cli/v0.14.2/numi-cli-v0.14.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f08f1b1418e2c183fe2b21d42e394e8b1b172a49087686f729cc385de602516"
    elsif Hardware::CPU.arm?
      url "https://files.numi.app/cli/v0.14.2/numi-cli-v0.14.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c53da9a5cb9c7060024582a5d13661e2918049269b6d87cfe36e39abdda311c"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
