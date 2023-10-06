# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoArchiveIt < Formula
  desc "A lightweight archive management utility, written in Go."
  homepage "https://github.com/korbexmachina/go-archive-it/"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/korbexmachina/go-archive-it/releases/download/v0.0.9/go-archive-it_Darwin_x86_64.tar.gz"
      sha256 "f80303dbb49d44b927942a2d79e60f6ff726738c852469a9e2c5ddc5032c7ff2"

      def install
        bin.install "go-archive-it"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/korbexmachina/go-archive-it/releases/download/v0.0.9/go-archive-it_Darwin_arm64.tar.gz"
      sha256 "3fbb5c4c2845852b3bf64f889fe4a8b85779fed8c500c41bebf8d7c756df430d"

      def install
        bin.install "go-archive-it"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/korbexmachina/go-archive-it/releases/download/v0.0.9/go-archive-it_Linux_arm64.tar.gz"
      sha256 "bd483467d84e537a883f14ef17c008a8cf2ff93776fc5ddb6ac349b2b648286e"

      def install
        bin.install "go-archive-it"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/korbexmachina/go-archive-it/releases/download/v0.0.9/go-archive-it_Linux_x86_64.tar.gz"
      sha256 "908303b4ec729c037e2300a73214118b8ae913d59e5dbb305039be3ced70a326"

      def install
        bin.install "go-archive-it"
      end
    end
  end

  test do
    system "#{bin}/go-archive-it -h"
    # ...
  end
end
