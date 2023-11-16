class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.8/numi-cli-v0.8-x86_64-apple-darwin.tar.gz"
      sha256 "06591244ad22772c472342eda2a9caf7a30b865260f8d055293c68bb5fa55edf"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.8/numi-cli-v0.8-aarch64-apple-darwin.tar.gz"
      sha256 "8b63b98a7ddc8c811065a47493eaa0061af4032776cb05a3639d787c4a24b033"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.8/numi-cli-v0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "788ac08b82711353389b697b444aa07ede4887b5b0ec1c94c0c8798e8cacaea0"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.8/numi-cli-v0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a785d0569e168712282f1eeee923925c3148afdabc627c5de5315c05639e91b6"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
