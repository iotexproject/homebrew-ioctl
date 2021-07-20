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
  #url "https://github.com/iotexproject/iotex-core.git"
  version "1.3.0"
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
