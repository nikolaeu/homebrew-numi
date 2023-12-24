class NumiCli < Formula
  desc "Smart calculator"
  homepage "https://numi.app"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.9/numi-cli-v0.9-x86_64-apple-darwin.tar.gz"
      sha256 "380df28a069658e24ff8590129fab597d45825f90594e681816d91c543db6486"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.9/numi-cli-v0.9-aarch64-apple-darwin.tar.gz"
      sha256 "21e9c44f955ae23e91bb140e0e4c7dbeebb0d2e0d8ef82bf0e8fa50c1e0a22a2"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://v4.numi.app/v4/v0.9/numi-cli-v0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d249b620214f35133c4cc7fa5284dcb48b4e1bdd28b24470b13c25e7604a24ea"
    elsif Hardware::CPU.arm?
      url "https://v4.numi.app/v4/v0.9/numi-cli-v0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3ff38870194ddc1805926906c5da5deec7859ec6c184f9d810d1a6932973376"
    end
  end
  def install
    bin.install "numi-cli"
  end
end
