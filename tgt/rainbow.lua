local status_ok, rainbow_delimiters = require 'rainbow_delimiters'
if not status_ok then
    return
end

vim.g.rainbow_delimiters {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
        javascript = 'rainbow-delimiters-react'
    }
}
