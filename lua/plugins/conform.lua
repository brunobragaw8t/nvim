return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<Leader>fm",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    notify_on_error = false,
    format_after_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = "fallback",
        }
      end
    end,
    formatters_by_ft = {
      lua = { "stylua" },
      json = { "oxfmt", "prettierd" },
      javascript = { "oxfmt", "prettierd" },
      typescript = { "oxfmt", "prettierd" },
      typescriptreact = { "oxfmt", "prettierd" },
      vue = { "prettierd" },
      css = { "prettierd" },
      -- Conform can run multiple formatters sequentially
      -- python = { "isort", "black" },
    },
    formatters = {
      prettierd = {
        require_cwd = true,
      },
      oxfmt = {
        require_cwd = true,
      },
    },
  },
}
