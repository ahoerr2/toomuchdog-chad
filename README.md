# Toomuchdog Chad
A more vscode like configuration for nvchad that allows you to have a full fledged lsp powered and git assisted code editor in seconds
<img width="1075" alt="image" src="https://github.com/ahoerr2/toomuchdog-chad/assets/42220471/ae61ea0e-ddad-49c9-b427-4c600f038b5d">
<img width="1159" alt="image" src="https://github.com/ahoerr2/toomuchdog-chad/assets/42220471/be3d79aa-85c7-43d6-8af0-2c9a3faee055">

## Prerequisites
+ [Neovim v9.5](https://github.com/neovim/neovim/releases/tag/v0.9.5)
+ [Nerd Font](https://www.nerdfonts.com/) as your terminal font.
  + Make sure the nerd font you set doesn't end with Mono to prevent small icons.
  + Example : JetbrainsMono Nerd Font and not JetbrainsMono Nerd Font Mono
+ [Ripgrep](https://github.com/BurntSushi/ripgrep) is required for grep searching with Telescope (OPTIONAL).
+ GCC, Windows users must have `[mingw](http://mingw-w64.org/downloads)` installed and set on path.
+ Make, Windows users must have [GnuWin32](https://sourceforge.net/projects/gnuwin32) installed and set on path.
+ Delete old neovim folders (check commands below)

## Installation Instructions

### Linux & Mac OS
######
    git clone https://github.com/ahoerr2/toomuchdog-chad ~/.config/nvim && nvim

### Windows 
If you're using Command Prompt(CMD)
######
    git clone https://github.com/NvChad/starter %USERPROFILE%\AppData\Local\nvim && nvim

If you're using PowerShell(pwsh)
######
    git clone https://github.com/NvChad/starter $ENV:USERPROFILE\AppData\Local\nvim && nvim

**If the above path doesnt work, try any of these paths :**
* For CMD : %LOCALAPPDATA%\nvim
######
    C:\Users\%USERNAME%\AppData\Local\nvim
* For PowerShell : $ENV:LocalAppData\nvim
######
    C:\Users\$ENV:USERNAME\AppData\Local\nvim

## Post Install
Run `:MasonInstallAll` command after lazy.nvim finishes downloading plugins.

To addon to Toomuchdog-chad create a new git branch and open a PR!

## Update Instructions
Run `:Lazy sync`
