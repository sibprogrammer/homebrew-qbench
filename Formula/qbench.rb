class Qbench < Formula
  desc "SQL queries benchmark tool"
  homepage "https://github.com/sibprogrammer/qbench"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/sibprogrammer/qbench/releases/download/v0.0.1/qbench_0.0.1_darwin_arm64.tar.gz"
      sha256 "15f8c52c8ebe7151080b1cf928239667dbe08ae0cab35c49d7df301ced805cd0"
    end
    on_intel do
      url "https://github.com/sibprogrammer/qbench/releases/download/v0.0.1/qbench_0.0.1_darwin_amd64.tar.gz"
      sha256 "047fc0bf095c48d8e2a6f1ca6f8427c2550acae228c0923b37831cdaff6509b9"
    end
  end

  on_linux do
    url "https://github.com/sibprogrammer/qbench/releases/download/v0.0.1/qbench_0.0.1_linux_amd64.tar.gz"
    sha256 "9a62d4188164e51abb56c052d56d6e0380684667ea9d2cdc5b85e3f92b8707f5"
  end

  def install
    bin.install "qbench"
  end

  test do
    system "#{bin}/qbench", "--version"
  end
end
