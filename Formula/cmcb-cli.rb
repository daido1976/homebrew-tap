class CmcbCli < Formula
  if Hardware::CPU.type == :arm
    url "https://github.com/daido1976/cat-markdown-code-blocks/releases/download/v0.1.0/cmcb-cli-aarch64-apple-darwin.tar.xz"
    sha256 "e7f96c0f41dca8684f1f2b08407ccba4c846dbd23124fdbbbc3b7d698ce9dfa2"
  else
    url "https://github.com/daido1976/cat-markdown-code-blocks/releases/download/v0.1.0/cmcb-cli-x86_64-apple-darwin.tar.xz"
    sha256 "e323dedf9a97636cc58f3db7ca72a1001d05cc4de2a5be762d15fe8a9e707e4b"
  end
  version "0.1.0"

  def install
    bin.install "cmcb"

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
