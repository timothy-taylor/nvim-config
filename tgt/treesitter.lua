local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"c",
		"rust",
		"css",
		"astro",
		"bash",
		"dot",
		"dockerfile",
		-- "cpp",
		"git_rebase",
		"lua",
		"vim",
		"help",
		"javascript",
		"typescript",
		"yaml",
		"svelte",
		"scss",
		-- "ruby",
		"regex",
		"r",
		"python",
		"make",
		"markdown",
		"markdown_inline",
		-- "llvm",
		"json",
		"json5",
		"jsdoc",
		"html",
		"graphql",
		"gitignore",
		"gitcommit",
		"gitattributes",
		"diff",
		"comment",
		-- "supercollider",
		"sql",
		"tsx",
	},
	sync_install = false,
	ignore_install = { "" },
	autopairs = { enable = true },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})
