class Qbench < Formula
  desc "SQL queries benchmark tool"
  homepage "https://github.com/sibprogrammer/qbench"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/sibprogrammer/qbench/releases/download/v0.0.2/qbench_0.0.2_darwin_arm64.tar.gz"
      sha256 "49ca0162de21ad6ff032c3c9f9de7a464cc5454ea917d3628ea004e22df752f2"
    end
    on_intel do
      url "https://github.com/sibprogrammer/qbench/releases/download/v0.0.2/qbench_0.0.2_darwin_amd64.tar.gz"
      sha256 "032be7ae84101dcb21e9f6144406e002981197f6c71b2d6667b996dc712d6391"
    end
  end

  on_linux do
    url "https://github.com/sibprogrammer/qbench/releases/download/v0.0.2/qbench_0.0.2_linux_amd64.tar.gz"
    sha256 "0523725ac5f867291d64de716cfd14f96a0bcdafdb091bf8549b76f71bffa8f7"
  end

  def install
    bin.install "qbench"
  end

  test do
    system "#{bin}/qbench", "--version"
  end
end
