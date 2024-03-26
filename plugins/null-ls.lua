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
        extra_args = {
          "--line-length",
          "79",
        },
      },
      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.formatting.shfmt.with {
        extra_args = { "-i", "2" },
      },
      null_ls.builtins.formatting.taplo.with {
        extra_args = {
          "--option",
          "array_auto_collapse=false",
          "--option",
          "reorder_arrays=true",
          "--option",
          "indent_string=    ",
        },
      },
      null_ls.builtins.diagnostics.luacheck,
      null_ls.builtins.diagnostics.flake8,
    }
    return config -- return final config table
  end,
}
