# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsEnv < Formula
  desc "A small binary for securely handling secrets in environment variables on AWS."
  homepage "https://github.com/telia-oss/aws-env"
  version "1.2.0"

  on_macos do
    url "https://github.com/telia-oss/aws-env/releases/download/v1.2.0/aws-env-1.2.0-darwin-amd64.tar.gz"
    sha256 "9c06cb77bdbdbe6bca421245f790e43f1fe236a99368e63e3808aeacf4d1335a"

    def install
      bin.install "aws-env"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the AwsEnv
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/telia-oss/aws-env/releases/download/v1.2.0/aws-env-1.2.0-linux-amd64.tar.gz"
      sha256 "ee0c587dea289080b50b17efab1447e05e100d522357d9930083ba364769c4bb"

      def install
        bin.install "aws-env"
      end
    end
  end

  test do
    system "#{bin}/aws-env --version"
  end
end
