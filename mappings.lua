-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    -- paste system clipboard
    ["<C-p>"] = [["+gP]],
    -- file explorer toggle
    ["<F12>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    -- git-blame
    ["<leader>gg"] = { "<cmd>GitBlameToggle<cr>", desc = "Toggle git blame" },
    ["<leader>gx"] = { "<cmd>GitBlameCopyFileURL<cr>", desc = "Copy current line remote url to clipboard" },
    -- code runner
    ["<leader>r"] = { "<cmd>SnipRun<cr>" },
  },
  v = {
    -- copy to system clipboard
    ["<C-c>"] = [["+y]],
    -- cut to system clipboard
    ["<C-x>"] = [["+x]],
    -- range format
    ["f"] = vim.lsp.buf.format,
    -- range sort lines
    ["s"] = ":!sort<cr>",
    -- code runner
    ["<leader>r"] = { "<cmd>SnipRun<cr>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
