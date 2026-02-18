# vim-color-starter

The simplest, easiest Vim/Neovim colorscheme in the world to customize. Use it as a template -- enable or disable any highlight group you want, using either your terminal's native colors or a custom color palette of your choice. Ships with `starter-dark` and `starter-light` variants built on swappable 16-color palettes.

## Install

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'n-at-han-k/vim-color-starter'
```

### [Vundle](https://github.com/VundleVim/Vundle.vim)

```vim
Plugin 'n-at-han-k/vim-color-starter'
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'n-at-han-k/vim-color-starter'
```

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ 'n-at-han-k/vim-color-starter' }
```

### [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
git clone https://github.com/n-at-han-k/vim-color-starter.git ~/.vim/bundle/vim-color-starter
```

### Manual

```sh
git clone https://github.com/n-at-han-k/vim-color-starter.git
cp vim-color-starter/colors/*.vim ~/.vim/colors/
```

## Usage

```vim
colorscheme starter-dark
" or
colorscheme starter-light
```

## Options

### `g:use_native_terminal_colors`

By default the colorscheme uses `termguicolors` to display the exact hex colors defined in the color map. Set this option to `1` before loading the colorscheme to use your terminal emulator's native 16-color palette instead:

```vim
let g:use_native_terminal_colors = 1
colorscheme starter-dark
```

This lets the colorscheme inherit whatever palette your terminal is configured with (e.g. Solarized, Gruvbox, etc.) while still controlling which highlight groups get colored.

## License

MIT
