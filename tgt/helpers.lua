-- :SplitLineAfterWord <word> <occurences>
_G.split_line_after_word = function(word, occurrence)
	local count = occurrence or 1
	local pattern = string.format("\\(\\zs%s\\ze\\)\\(\\s\\+\\)", word)
	local replacement = "\\1\\r"

	for _ = 1, count do
		if vim.fn.search(pattern, "n") ~= 0 then
			vim.api.nvim_command(string.format("s/%s/%s/", pattern, replacement))
		end
	end
end
vim.cmd("command! -nargs=* SplitLineAfterWord lua split_line_after_word(<f-args>)")
