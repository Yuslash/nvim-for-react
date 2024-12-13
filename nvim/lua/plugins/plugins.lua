return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {}, -- Enables tsserver for JavaScript/TypeScript
      },
    },
  },
  {
    "roobert/tailwindcss-colorizer-cmp.nvim", -- Tailwind CSS Colorizer for nvim-cmp
    opts = {}, -- Default options (can customize if needed)
  },
}
