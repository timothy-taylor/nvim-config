return {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "norns", "midi", "params", "metro", "screen", "clock", "include" },
				disable = { "lowercase-global" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
