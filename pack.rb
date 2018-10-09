require "FileUtils"

class Pack < Formula
  homepage "https://github.com/buildpack/pack"

  v = "v0.0.4" # CI Managed
  url "https://github.com/buildpack/pack/releases/download/#{v}/pack-macos"
  version v
  sha256 "" # CI Managed

  def install
    FileUtils.mv("pack-macos", "pack")
    bin.install "pack"
  end
end
