-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "c",
      "vimdoc",
      "query",
      -- add more arguments for adding more treesitter parsers
    },
    ignore_install = { "latex" },
    highlight = { enable = true },
  },
}
