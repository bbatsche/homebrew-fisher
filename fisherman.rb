class Fisherman < Formula
  desc "fish plugin manager"
  homepage "https://github.com/fisherman/fisherman"

  url "https://raw.githubusercontent.com/fisherman/fisherman/2.13.0/fisher.fish"
  sha256 "48e28860e33d8387595d0d3cced91ee64569579e88d4294b99c9d5e45d7daef9"

  head "https://github.com/fisherman/fisherman.git"

  depends_on "fish"

  def install
    (share/"fish/vendor_functions.d/").install "fisher.fish"
    File.write("fisher-completion.fish", "fisher --complete")
    fish_completion.install "fisher-completion.fish" => "fisher.fish"
    ohai "You may need to restart any open terminal sessions for changes to take effect."
  end
end
