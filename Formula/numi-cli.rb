class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.7/numi-cli-v0.7-x86_64-apple-darwin.tar.gz"
      sha256 "41819d8776cf0c5e610df7fa32ef49b3e8c2bce63b447f9b1f0538adc101ae31"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.7/numi-cli-v0.7-aarch64-apple-darwin.tar.gz"
      sha256 "a1d17049c3a53c38a7bb2c67018556d1185c9f7738cc9bac905d4e9be6901438"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.7/numi-cli-v0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "459d17bb4ddb45687f5a1ac0d4b5db436a04fb0cc886e65bd4c644c6670bbc85"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.7/numi-cli-v0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97fda075b1f7059a8be9114fff06f95886b35c6636f283ccc15def4da78c1e88"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
