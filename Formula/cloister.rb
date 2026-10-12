class Cloister < Formula
  desc "Privacy-oriented development environment for AI coding agents"
  homepage "https://github.com/yi427/Cloister"
  url "https://github.com/yi427/Cloister/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "f56169a8e68d97149f2a51549eb6881561ff47d00f8ef0e7362ab1b978e1881b"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build
  depends_on arch: :arm64
  depends_on "container"
  depends_on macos: :tahoe

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Cloister does not start Apple container or create a Profile during
      installation. Prepare and inspect the environment explicitly with:

        cloister init
        cloister check
    EOS
  end

  test do
    assert_match "cloister #{version}", shell_output("#{bin}/cloister --version")
  end
end
