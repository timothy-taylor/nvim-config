local n = require("tgt.keymap").nnoremap
local v = require("tgt.keymap").vnoremap

n("<leader>l", "<cmd>lua vim.lsp.buf.format({ timeout = 2000 })<CR>")
n("<leader>s", "<cmd>w<CR>")
n("<leader>pv", "<cmd>Ex<CR>")
n("<leader>e", "<cmd>Lex 30<CR>")
n("<leader>f", "<cmd>FZF<CR>")
n("<leader>v", "<cmd>vsplit<CR>")

-- simplified split window navigation Ctrl-{h,j,k,l}
n("<C-h>", "<C-w>h")
n("<C-j>", "<C-w>j")
n("<C-k>", "<C-w>k")
n("<C-l>", "<C-w>l")

-- resize windows
n("<C-S-Down>", "<cmd>resize -2<CR>")
n("<C-S-Up>", "<cmd>resize +2<CR>")
n("<C-S-Right>", "<cmd>vertical resize -2<CR>")
n("<C-S-Left>", "<cmd>vertical resize +2<CR>")

-- navigate references
n("<leader>n", '<cmd>lua require"illuminate".goto_next_reference(true)<CR>')
n("<leader>b", '<cmd>lua require"illuminate".goto_prev_reference(true)<CR>')

--[[ -- navigate buffers
n("<S-l>", "<cmd>bnext<CR>")
n("<S-h>", "<cmd>bprevious<CR>")
 ]]

-- pastes don't clear the buffer hack
v("p", '"_dP')

-- tabbing doesn't clear selection
v("<", "<gv")
v(">", ">gv")

-- center the buffer on the screen on jumpy things
n("<C-d>", "<C-d>zz")
n("<C-u>", "<C-u>zz")
n("n", "nzz")
n("N", "Nzz")
