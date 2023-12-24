class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.9/numi-cli-v0.9-x86_64-apple-darwin.tar.gz"
      sha256 "13a6ab53e44d30c2f2861423959cdd5d8e1b818f6a98b47db583000397be5350"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.9/numi-cli-v0.9-aarch64-apple-darwin.tar.gz"
      sha256 "4399b9b21ba14322933eec832f88736833844ef9fb3c1e0eb62659d3e87246f0"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.9/numi-cli-v0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ad335f4438369c83bb58187bfb6057683bb4ba2862c244c08f2f57a14262bc7"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.9/numi-cli-v0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c5a3a534ba80579834ccf5b1a56af9a5c912980416be4bb458a242f6fb0ef55"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
