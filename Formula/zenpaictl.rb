class Zenpaictl < Formula
  desc "The thing that does cool stuff"
  homepage "https://github.com/glue-africa/zenpaictl"
  url "https://github.com/glue-africa/zenpaictl.git", :revision => "4822e6f"
  version "0.0.1"
  
  depends_on "zig"

  def install
    system "zig", "build", "-Doptimize=ReleaseFast"
    bin.install "zig-out/bin/zenpaictl"
  end

end

