class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://s3.numi.io/cli/v0.13.0/numi-cli-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "2a77681d7c5faadf9c74bcfe7946826aacd7ee5110a408ad0d95c034dd58d164"
    elsif Hardware::CPU.arm?
      url "https://s3.numi.io/cli/v0.13.0/numi-cli-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ec6c0112537cc0d5f3b57840423d20ce356f1aef082dd5db78955de3ac36188"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://s3.numi.io/cli/v0.13.0/numi-cli-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bfcb79dc358ba85e0e49f2a47bf3ec825cd7f33f11859040e5f3cb97f2abfaf"
    elsif Hardware::CPU.arm?
      url "https://s3.numi.io/cli/v0.13.0/numi-cli-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ac7dce5aecfe1470f3f1fb257d64f2485b8b7e7506c89552774cb23697ad161"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
