class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://s3.numi.app/v4/v0.11.0/numi-cli-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "3cbf4d17286ca9961f063f8be255f48b7a104cc3fafd616bf7c3149154ff711c"
    elsif Hardware::CPU.arm?
      url "https://s3.numi.app/v4/v0.11.0/numi-cli-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "59cbabef88c5bc728638a3a5872c6ee1bd0c343a79ddd88d6c3fc494396bc0e6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://s3.numi.app/v4/v0.11.0/numi-cli-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "520325500b000d1e7cdfb09d8a0f8dc5a54ae9bbf4ab42f8c1e2f88f787066e2"
    elsif Hardware::CPU.arm?
      url "https://s3.numi.app/v4/v0.11.0/numi-cli-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a728a83c2f1aab065257e78a923c379070de0a43befb2a1ef768c18105b777d9"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
