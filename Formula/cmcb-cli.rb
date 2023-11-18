class CmcbCli < Formula
  if Hardware::CPU.type == :arm
    url "https://github.com/daido1976/cat-markdown-code-blocks/releases/download/v0.2.0/cmcb-cli-aarch64-apple-darwin.tar.xz"
    sha256 "525d12034a04e55ca98b9998b464b0254fb3ed70a6506aae5a4f4cbdc3066e07"
  else
    url "https://github.com/daido1976/cat-markdown-code-blocks/releases/download/v0.2.0/cmcb-cli-x86_64-apple-darwin.tar.xz"
    sha256 "7a553d98e07c10f6a794d84215eb54a0ca227c5db1871fcd7ed68c863eb069c5"
  end
  version "0.2.0"

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
