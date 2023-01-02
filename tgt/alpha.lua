local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[       _            _            _       ]],
	[[      /\ \         /\ \         /\ \     ]],
	[[      \_\ \       /  \ \        \_\ \    ]],
	[[      /\__ \     / /\ \_\       /\__ \   ]],
	[[     / /_ \ \   / / /\/_/      / /_ \ \  ]],
	[[    / / /\ \ \ / / / ______   / / /\ \ \ ]],
	[[   / / /  \/_// / / /\_____\ / / /  \/_/ ]],
	[[  / / /      / / /  \/____ // / /        ]],
	[[ / / /      / / /_____/ / // / /         ]],
	[[/_/ /      / / /______\/ //_/ /          ]],
	[[\_\/       \/___________/ \_\/           ]],
}
dashboard.section.buttons.val = {
	dashboard.button("o", "Open file browser", ":Ex<CR>"),
	dashboard.button("f", "Find file", ":FZF<CR>"),
	dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("q", "Quit", ":qa<CR>"),
}

local function footer()
	local handle = io.popen("./obliquestrategies.sh")
	if handle then
		local result = handle:read("*a")
		handle:close()
		return result
	end
  return ""
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
