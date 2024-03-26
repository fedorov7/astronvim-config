return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.cmake_format,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.formatting.black.with {
        args = {
          "--line-length",
          "80",
          "--stdin-filename",
          "$FILENAME",
          "--quiet",
          "-",
        },
      },
      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.formatting.shfmt.with {
        args = { "-i", "2" },
      },
      null_ls.builtins.diagnostics.luacheck,
      null_ls.builtins.diagnostics.flake8,
    }
    return config -- return final config table
  end,
}
