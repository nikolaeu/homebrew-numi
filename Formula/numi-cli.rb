class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://files.numi.app/cli/v0.18.0/numi-cli-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "9479e3df0d72a343953183032b1146647bb594f4eefbfe44e66328a6bc0495b9"
    elsif Hardware::CPU.arm?
      url "https://files.numi.app/cli/v0.18.0/numi-cli-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "e1d140ed7f085eb1bfa7f77873a4b484f91e7cf891ebfd6f25207d5e4a68d453"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://files.numi.app/cli/v0.18.0/numi-cli-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "663d28ecbea40a2edc8df2c3eb01d317f88b9dc29db950261d1d20644d250241"
    elsif Hardware::CPU.arm?
      url "https://files.numi.app/cli/v0.18.0/numi-cli-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c1b5e0f102c5b9def7ee7702e9b3341056d1397c24141da5c61ccaa915043df"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
