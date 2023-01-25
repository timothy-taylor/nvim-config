local status_ok, mind = pcall(require, "mind")
if not status_ok then
	return
end

local config = {
	ui = {
		empty_indent_marker = "│",
		node_indent_marker = "└",
		root_marker = " ☰ ",
		data_marker = " ⛁ ",
		url_marker = " ☎ ",
		select_marker = "←",
		icon_preset = {
			{ "✎ ", "Notes" },
			{ "☐ ", "Todos" },
			{ "☑ ", "Done" },
			{ "☓ ", "Cancelled" },
		},
	},
}

mind.setup(config)
