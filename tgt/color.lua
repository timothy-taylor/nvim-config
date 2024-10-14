local colorscheme = "tokyonight-storm"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
