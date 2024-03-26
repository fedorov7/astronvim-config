return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = false,
    window = {
      position = "left",
      width = 30,
      mappings = {
        ["<2-LeftMouse>"] = "open",
        ["<cr>"] = "open",
        ["o"] = "open",
        ["S"] = "open_split",
        ["s"] = "open_vsplit",
        ["C"] = "close_node",
        ["R"] = "refresh",
        ["a"] = "add",
        ["d"] = "delete",
        ["r"] = "rename",
        ["y"] = "copy_to_clipboard",
        ["x"] = "cut_to_clipboard",
        ["p"] = "paste_from_clipboard",
        ["c"] = "copy",
        ["m"] = "move",
        ["q"] = "close_window",
      },
    },
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".git",
          "node_modules",
        },
        always_show = {
          ".gitignore",
          ".dockerignore",
          ".env",
        },
        never_show = {
          "__pycache__",
          ".mypycache",
          ".DS_Store",
          "thumbs.db",
        },
      },
      window = {
        mappings = {
          ["<bs>"] = "navigate_up",
          ["h"] = "toggle_hidden",
          ["/"] = "fuzzy_finder",
          ["f"] = "filter_on_submit",
          ["<c-x>"] = "clear_filter",
        },
      },
    },
  },
}
