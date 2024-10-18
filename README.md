# Alacritty-customization

my personal Alacritty customization

# Installation

---

[Downlink](https://alacritty.org)

Alacritty can be installed by using various package managers on Linux, BSD, macOS and Windows.

Prebuilt binaries for macOS and Windows can also be downloaded from the GitHub releases page.

For everyone else, the detailed instructions to install Alacritty can be found here.

# configuration

---

## prepare config file

```shell
cd ~
git clone https://github.com/hadleyhzy34/Alacritty-customization.git
cd Alacritty-customization
mkdir -p ~/.config/alacritty
cp ~/Alacritty-customization/alacritty.toml ~/.config/alacritty/.
```

[tutorial](https://alacritty.org/config-alacritty.html) on how to config this file

## font

```toml
[font]
size = 16.0

[font.normal]
# family = "SauceCodePro Nerd Font Mono"
# family = "DejaVuSansM Nerd Font"
family = "FiraCode Nerd Font"
style = "Regular"

[font.glyph_offset]
x = 0
y = 1

[font.offset]
x = 0
y = 1
[font]
size = 16.0
```

## cursor

```toml
[cursor.style]
shape = "Beam"
[cursor.vi_mode_style]
shape = "Beam"
```

> [!info]
> make sure set vi mode cursor style.If the vi mode cursor style is "None" or not specified, it will fall back to the active value of the normal cursor.

> [!bug] cursor shape back to 'block' after existing neovim
> add below code block to `~/.config/nvim/init.lua`

```lua
vim.api.nvim_create_autocmd("ExitPre", {
 group = vim.api.nvim_create_augroup("Exit", { clear = true }),
 command = "set guicursor=a:ver90",
 desc = "Set cursor back to beam when leaving Neovim."
})
```

## theme

[theme-link](https://github.com/alacritty/alacritty-theme)

### Imports

Clone the repository, or download the theme of your choice:

```shell
# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
```

Add an import to your `alacritty.toml` (Replace `{theme}` with your desired colorscheme):

```toml
import = [
    "~/.config/alacritty/themes/themes/{theme}.toml"
]
```
