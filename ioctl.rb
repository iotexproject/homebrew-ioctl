# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ioctl < Formula
  desc "ioctl is a command line interface for interacting with the IoTeX blockchain."
  homepage "https://iotex.io"
  url "https://github.com/iotexproject/iotex-core/releases/download/v1.1.0/ioctl-darwin-amd64"
  sha256 "62e2b4a9ae609784dae9a23b59ce5cd3b601e5a26ab77ecb9c33d59c7949d9c4"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    
    # system "cmake", ".", *std_cmake_args
    bin.install "ioctl-darwin-amd64"
  end
end
