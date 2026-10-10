class Cloister < Formula
  desc "Privacy-oriented development environment for AI coding agents"
  homepage "https://github.com/yi427/Cloister"
  url "https://github.com/yi427/Cloister/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "54c8ec22f4dd3158916a0fc2d90d77e3834b332194da53286ec5db5abcc441ed"
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
