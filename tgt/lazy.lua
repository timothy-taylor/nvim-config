local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
end

local plugins = {
	"wbthomason/packer.nvim",
	"folke/tokyonight.nvim",
	"nvim-lua/popup.nvim",
	"nvim-lua/plenary.nvim",
	"junegunn/fzf",
	"windwp/nvim-autopairs",
	"goolord/alpha-nvim",
	"RRethy/vim-illuminate",
	"f-person/git-blame.nvim",

	-- completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",

	-- snippets
	"L3MON4D3/LuaSnip",

	-- lsp
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim",

	-- treesitter
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
	"hiphish/rainbow-delimiters.nvim",

	-- commenting
	"numToStr/Comment.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",

	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}

lazy.setup(plugins)
