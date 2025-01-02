-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.media.cord-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  { import = "astrocommunity.terminal-integration.toggleterm-manager-nvim" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  -- import/override with your plugins folder
}
