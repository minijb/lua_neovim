local M = {}

function M.setup()
  require("bufferline").setup {
    options = {
      numbers = "none",
      diagnostics = "nvim_lsp",
      separator_style = "slant" or "padded_slant",
      show_tab_indicators = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      hover = {
	enabled = true,
	delay = 200,
	reveal = {'close'},}
    },
  }
end

return M
