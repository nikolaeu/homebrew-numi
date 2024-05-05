class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://s3.numi.app/cli/v0.11.0/numi-cli-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "a9d55ec96d191bb8b7b88bb05cb4e64e042da4494cc108359ebe06ec4de74f55"
    elsif Hardware::CPU.arm?
      url "https://s3.numi.app/cli/v0.11.0/numi-cli-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "e2df88347cc04c4b86cb68e5fc8a774e682ef74bf44fbc78823107f7210252a9"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://s3.numi.app/cli/v0.11.0/numi-cli-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "932636e299d62eeecb9b17f1f778c6fffd1ff71e8dde6ebd1f8bd08879d276a3"
    elsif Hardware::CPU.arm?
      url "https://s3.numi.app/cli/v0.11.0/numi-cli-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a1fd456b555adb375dd82db39bfe45f6674ece50a1e37202428a84cda6b0450"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
