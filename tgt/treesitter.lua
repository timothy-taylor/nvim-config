local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

-- TODO: change all to specific langs
configs.setup {
  ensure_installed = "all",
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
}
