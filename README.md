# nvim.beatzball

My custom .config/nvim.beatzball inspired by [LazyVim](https://github.com/LazyVim/LazyVim)

> Minimum Requirements:
`>= neovim@0.9.0`

## Install

> The steps below help ensure that you do not need to override your config and instead run this config instance separately. 
> 
> Feel free to just do `nvim.<whatever>` instead of `nvim.beatzball`, but it's on you to back up your config.

```shell
cd ~/.config
git clone git@github.com:beatzball/config-nvim.git nvim.beatzball
```

> The next line assumes you are using zshell, but feel free to change to your shell start up script as necessary. If you've changed `nvim.beatzball` above, make sure to also change it in the the next line.

```shell
echo "alias nvbeatz=\"NVIM_APPNAME=nvim.beatzball nvim\"" >> .zshrc
```

> Now start up your neovim experience with
```shell
nvbeatz
```

## Uninstall

```shell
rm -rf ~/.config/nvim.beatzball ~/.local/share/nvim.beatzball
```

## Todo

- [x] leader to `,`
- [x] dashboard using alpha-nvim & custom alpha-theme
- [x] which-key to show key triggers available
- [x] fix gitsigns to show blame on highlighted line
- [x] use lazy.nvim for faster bootup
- [x] move plugins to suggested directory structure under `lua/plugins/*.lua`
- [x] more key commands in which-key
- [ ] lazygit (maybe)

