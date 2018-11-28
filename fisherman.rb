class Fisherman < Formula
  desc "fish plugin manager"
  homepage "https://github.com/fisherman/fisherman"

  url "https://raw.githubusercontent.com/jorgebucaran/fisher/3.1.1/fisher.fish"
  sha256 "1145140e8adfc3c73ffcfadaddbc9c80abe485cc663d9df38a565f114a83b399"

  head "https://github.com/jorgebucaran/fisher.git"

  depends_on "fish"

  def install
    fish_function.install "fisher.fish"

    ohai "You may need to restart any open terminal sessions for changes to take effect."
  end
end
