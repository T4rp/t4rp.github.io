Previously, this blog used pandoc to render pages. I've recently changed it to
use python and jinja instead.

On Arch Linux, pandoc-cli requires [1GB of
storage](https://www.reddit.com/r/haskell/comments/6jj8ha/whats_going_on_in_archlinux_pandoc_requires_1gb/).
It made system upgrades take much longer, since the package relies on shit-tons
of dependencies. It's a great tool, but it's to heavy for this simple blog
website.

