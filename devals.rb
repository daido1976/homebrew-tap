# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devals < Formula
  desc ""
  homepage ""
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/daido1976/devals/releases/download/v0.1.2/devals_Darwin_x86_64.tar.gz"
      sha256 "1eb805b00a1fef337bcdd5fce5df12d8627f1fd2b62c33627d980c726f380685"

      def install
        bin.install "devals"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/daido1976/devals/releases/download/v0.1.2/devals_Darwin_arm64.tar.gz"
      sha256 "d501fbae26a7edc90fc95012465b09d2fb8ebf8353982577f04b6dd1785b4275"

      def install
        bin.install "devals"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/daido1976/devals/releases/download/v0.1.2/devals_Linux_x86_64.tar.gz"
      sha256 "b6e9439ff612b7a1b28f286ab4100e34fc3da2900964de677096f40fe0f98e6a"

      def install
        bin.install "devals"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/daido1976/devals/releases/download/v0.1.2/devals_Linux_arm64.tar.gz"
      sha256 "9fcd0aa5cb00ff2173fba43dd03d9559ca2ee3aaa9bfe272fa5e4a88151ddd5d"

      def install
        bin.install "devals"
      end
    end
  end
end
