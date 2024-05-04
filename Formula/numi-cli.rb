class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://s3.numi.app/v4/v0.11.0/numi-cli-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "3276676ddc934bcac19457a26e923d44635063b08a5883eae7322e0d2b9308c6"
    elsif Hardware::CPU.arm?
      url "https://s3.numi.app/v4/v0.11.0/numi-cli-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "7b8fa5c1dfd028e453cd442c02097c903b5bcae60abd3a173401f96c9c2e480d"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://s3.numi.app/v4/v0.11.0/numi-cli-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9708ea859cee4c8cc5a25e3fb6fd388022f223ddca6211f1d5ccf972fbc160d5"
    elsif Hardware::CPU.arm?
      url "https://s3.numi.app/v4/v0.11.0/numi-cli-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34df0c1d9ab7abd3b0b8e06ca659a1e8075b0567125738d948793ec6882844ca"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
