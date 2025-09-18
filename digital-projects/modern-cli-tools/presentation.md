---
title: Modern CLI Tools
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.svg')
footer: "Patrizio Bekerle - https://github.com/pbek/presentations"
---

![bg left:40% 80%](./images/tu-graz.svg)

# Modern CLI Tools

Modern tools, that can make your life easier and more productive

---

# [duf](https://github.com/muesli/duf)

Replacement for `df` (disk free)

![w:800px](./images/duf.webp)

---

# [dua](https://github.com/Byron/dua-cli)

Replacement for `du` (disk usage)
`dua interactive` for an interactive mode, like `ncdu`

![w:450px](./images/dua.webp)

---

# [dust](https://github.com/bootandy/dust)

"`du` + rust = `dust`. Like `du` but more intuitive."

![w:800px](https://github.com/bootandy/dust/raw/master/media/snap.png)

---

# [erdtree](https://github.com/solidiquis/erdtree)

"Modern, cross-platform, multi-threaded, and general purpose filesystem and disk-usage utility"

![w:450px](./images/erdtree.webp)

---

# [ripgrep](https://github.com/BurntSushi/ripgrep)

Very fast replacement for `grep`

![w:900px](./images/ripgrep.webp)

---

# [eza](https://github.com/eza-community/eza)

Replacement for `ls` with more colors

![w:900px](./images/eza.webp)

---

# [bat](https://github.com/sharkdp/bat)

Replacement for `less` with syntax highlighting

![w:500px](./images/bat.webp)

---

# [batman](https://github.com/eth-p/bat-extras/blob/master/doc/batman.md)

Replacement for `man` with `bat` for syntax highlighting

![w:500px](./images/batman.webp)

---

# [btop](https://github.com/aristocratos/btop)

Another `top` alternative

![w:600px](https://raw.githubusercontent.com/aristocratos/btop/main/Img/normal.png)

---

# [tldr](https://github.com/tldr-pages/tldr)

Collaborative cheatsheets for console commands

![w:500px](https://raw.githubusercontent.com/tldr-pages/tldr/main/images/tldr-light.png)

---

# [fd](https://github.com/sharkdp/fd)

Fast and user-friendly replacement for `find`

![w:500px](https://raw.githubusercontent.com/sharkdp/fd/master/doc/screencast.svg)

---

# [difftastic](https://github.com/Wilfred/difftastic)

Structural diff tool that compares files based on their syntax

![w:700px](https://raw.githubusercontent.com/Wilfred/difftastic/master/img/js.png)

---

# [zellij](https://github.com/zellij-org/zellij)

Replacement for `screen` and `tmux` that allows copying from panels and has sane shortcuts

![w:630px](https://raw.githubusercontent.com/zellij-org/zellij/main/assets/demo.gif)

---

# [lazygit](https://github.com/jesseduffield/lazygit)

The best git TUI I know, better than most commercial GUIs
Watch [15 Lazygit Features In Under 15 Minutes](https://www.youtube.com/watch?v=3Kq1MIfTWCE)

![w:450px](https://raw.githubusercontent.com/jesseduffield/lazygit/assets/demo/commit_and_push-compressed.gif)

---

# [lazydocker](https://github.com/jesseduffield/lazydocker)

A simple terminal UI for both docker and docker-compose

![w:650px](https://github.com/jesseduffield/lazydocker/raw/master/docs/resources/demo3.gif)

---

# [broot](https://github.com/Canop/broot)

Fast directory switcher with search
Has `br` alias for changing into directories

![w:350px](https://raw.githubusercontent.com/Canop/broot/main/website/docs/img/20230930-overview.png)

---

# [yazi](https://github.com/sxyazi/yazi)

"Blazing Fast Terminal File Manager"
I use a `yy` [alias](https://github.com/pbek/nixcfg/blob/36b6818478eed2813293ee258afd12a45543fcd9/modules/mixins/common.nix#L203-L215) for changing into directories

![w:700px](./images/yazi.webp)

---

# [zoxide](https://github.com/ajeetdsouza/zoxide)

A smarter `cd` command that learns your habits

![w:700px](https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/contrib/tutorial.webp)

---

# [fzf](https://github.com/junegunn/fzf)

A command-line fuzzy finder, for example `find * -type f | fzf`

![w:600px](https://raw.githubusercontent.com/junegunn/i/master/fzf-preview.png)

---

# [sysz](https://github.com/joehillen/sysz)

An `fzf` terminal UI for `systemctl`

[![w:700px](./images/yazi.webp)](https://asciinema.org/a/BLsJz73uF7DdQj7FVGqLPhqCa)

---

# [ouch](https://github.com/ouch-org/ouch)

Painless compression and decompression in the terminal (`tar`, `zip`, `gzip`, `bzip2`, `xz`, `7z`, `rar`, ...)

```bash
# Compress two files into `archive.zip`
ouch compress one.txt two.txt archive.zip

# Decompress a file
ouch decompress archive.zip

# List the contents of a compressed file
ouch list archive.zip
```

---

# [procs](https://github.com/dalance/procs)

A modern replacement for ps

![w:800px](./images/procs.webp)

---

# [qc](https://github.com/qownnotes/qc)

[QOwnNotes](https://github.com/pbek/QOwnNotes) command-line snippet manager from Markdown files

![w:500px](https://raw.githubusercontent.com/qownnotes/qc/main/qc.png)

![w:450px](https://raw.githubusercontent.com/qownnotes/qc/main/commands.png)
