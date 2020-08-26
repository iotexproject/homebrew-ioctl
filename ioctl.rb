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
class IotexCore < Formula
  desc "ioctl is a command line interface for interacting with the IoTeX blockchain."
  homepage "https://docs.iotex.io/developer/get-started/ioctl-install.html"
  url "https://github.com/iotexproject/iotex-core/archive/v1.1.1.tar.gz"
  sha256 "fcff5ce4231253ebbe04e0405a36a7b89fb2d6c1b30ab0b5deac6ac6f84f9f8b"
  license "Apache-2.0"

  depends_on "golang"
  depends_on "make"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    ENV["GOPROXY"] = "https://goproxy.io"
    system "make", "ioctl"
    bin.install "bin/ioctl"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test iotex-core`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
