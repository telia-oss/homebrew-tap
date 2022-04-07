# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudConnect < Formula
  desc "CLI for managing transit gateway attachments."
  homepage "https://github.com/telia-oss/cloudconnect"
  version "0.2.1"

  if OS.mac?
    url "https://github.com/telia-oss/cloudconnect/releases/download/v0.2.1/cloud-connect-0.2.1-darwin-amd64.tar.gz"
    sha256 "242dc556ded6f5a661b62f9ed3bdc18f35a763495a66d722282134d0c449f6e6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/telia-oss/cloudconnect/releases/download/v0.2.1/cloud-connect-0.2.1-linux-amd64.tar.gz"
    sha256 "64c98c2723eade5277bf2f18d4dab836afacf7341e92f0a0cc9dfa2a7b10a518"
  end

  def install
    bin.install "cloud-connect"
  end

  test do
    system "#{bin}/cloud-connect --version"
  end
end
