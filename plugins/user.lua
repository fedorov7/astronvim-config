return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  { "tpope/vim-abolish", lazy = false },
  { "fedorov7/vim-uefi", ft = { "c", "uefi" } },
  { "fedorov7/ksslint", ft = "c" },
  { "mbbill/fencview", ft = "c" },
}
