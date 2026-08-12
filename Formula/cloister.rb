class Cloister < Formula
  desc "Privacy-oriented development environment for AI coding agents"
  homepage "https://github.com/yi427/Cloister"
  url "https://github.com/yi427/Cloister/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e2ba8f87ddd94a5f20441ff10a05597d955cc8f7e12db577024561093f6b1b9c"
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
