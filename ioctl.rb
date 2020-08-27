#------------------------------------------------------------------------------
# ioctl.rb
#
# Homebrew formula for ioctl.  Homebrew (http://brew.sh/) is
# the de-facto standard package manager for OS X, and this Ruby script
# contains the metadata used to map command-line user settings used
# with the 'brew' command onto build options.
#
# Copyright (c) 2019 IoTeX Foundation
#------------------------------------------------------------------------------
class Ioctl < Formula
  desc "Iotex ctl is a command-line interface for interacting with the IoTeX blockchain"
  homepage "https://docs.iotex.io/developer/get-started/ioctl-install.html"
  url "https://github.com/iotexproject/iotex-core/archive/master.zip"
  sha256 "174801fd5c27c4da45d3865ac93c7c8663d56db4c68bd458857e8c4f432eb0c9"
  license "Apache-2.0"

  depends_on "go"
  depends_on "make"

  def install
    ENV["GOPROXY"] = "https://goproxy.io"
    system "make", "ioctl"
    bin.install "bin/ioctl"
  end

  test do
    system "ioctl", "config", "set", "endpoint", "api.iotex.one:443"
  end
end
