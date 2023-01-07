### nvim config

just realized you can write Neovim configs in Lua, so decided to take the plunge and move over to it from my pretty lightweight Vim setup.

1. clone this repo in `~/.config/nvim/`, change repo directory name from `nvim-config` to `lua` (this might be superstitious) and then require it by adding `require("tgt")` in `~/.config/nvim/init.lua`
2. install packer from the [github repo](https://github.com/wbthomason/packer.nvim) and then PackerSync to install things. It might take a couple of passes as currently set up. 
3. go through [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins) to add any desired formatters or linters
4. install rust from rustup to install stylua (and rust is nice to have for tooling)
5. add oblique strategies to your system path if you want, for example (don't copy this verbatim, add the filepath between your existing PATH and :$PATH): `export PATH=$HOME/.config/nvim/lua:$PATH`

running NEOVIM v0.8.0

