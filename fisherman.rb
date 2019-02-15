class Fisherman < Formula
  desc "fish plugin manager"
  homepage "https://github.com/jorgebucaran/fisher"

  url "https://github.com/jorgebucaran/fisher/archive/3.2.7.tar.gz"
  sha256 "2c9813d2e116475701368cbaa455f7919ad6d3807a1e9df94b30b75afaf65102"

  head "https://github.com/fisherman/fisherman.git"

  depends_on "fish"

  def install
    fish_function.install "fisher.fish" => "fisher.fish"

    ohai "You may need to restart any open terminal sessions for changes to take effect."
  end
end
