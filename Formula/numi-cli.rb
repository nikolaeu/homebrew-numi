class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.6/numi-cli-v0.6-x86_64-apple-darwin.tar.gz"
      sha256 "d9de72c89db99518cb7b4488a6df7525b5bfcee0b1f64f0b1d489e33c1777e37"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.6/numi-cli-v0.6-aarch64-apple-darwin.tar.gz"
      sha256 "b22f58999cd0946f2bbc618773cd08b2fb08f7b744875c83988c08057ab4207e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.6/numi-cli-v0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abd06f2e5b96de369ecb2a4801d4eab1eeada6318ff29a37ffcb76a34c61d728"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.6/numi-cli-v0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c946357b9942495b86d82250c38bb7625050856d3984eadea4e129d5acc7565c"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
