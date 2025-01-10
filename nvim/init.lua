require("config.lazy")
require("plugins.plugins")
require("plugins.luasnip")
require("plugins.cyber")
vim.cmd("colorscheme cyberdream")
-- vim.opt.guicursor = "n-v-c:block"

-- Set cursor styles and behaviors for different modes
vim.opt.guicursor = "n-v-c:block,i:block-CursorInsert,r-cr:hor20,o:hor50"

-- Customize the highlight group for Insert mode cursor
vim.api.nvim_set_hl(0, "CursorInsert", { fg = "white", bg = "blue" })

-- Auto-save .jsx and .css files when they are modified
vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
  pattern = { "*.jsx", "*.css" },
  callback = function()
    if vim.bo.modified then
      vim.cmd("silent write")
    end
  end,
})
