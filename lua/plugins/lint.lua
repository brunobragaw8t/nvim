---@module 'lazy'
---@type LazySpec
return {

  { -- Linting
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")

      local typescript_linters = {}

      local oxlint_configs = { ".oxlintrc.json" }
      local has_oxlint = false

      -- Check for oxlint config file
      for _, config_file in ipairs(oxlint_configs) do
        if vim.fn.filereadable(vim.fn.getcwd() .. "/" .. config_file) == 1 then
          has_oxlint = true
          break
        end
      end

      -- Check for oxlint in package.json
      if not has_oxlint then
        local pkg_path = vim.fn.getcwd() .. "/package.json"
        if vim.fn.filereadable(pkg_path) == 1 then
          local pkg_content = vim.fn.readfile(pkg_path)
          local pkg_text = table.concat(pkg_content, "\n")
          if pkg_text:find('"oxlint"') then
            has_oxlint = true
          end
        end
      end

      if has_oxlint then
        table.insert(typescript_linters, "oxlint")
      end

      lint.linters_by_ft = {
        -- markdown = { "markdownlint" },
        typescript = typescript_linters,
        typescriptreact = typescript_linters,
      }

      -- To allow other plugins to add linters to require('lint').linters_by_ft,
      -- instead set linters_by_ft like this:
      -- lint.linters_by_ft = lint.linters_by_ft or {}
      -- lint.linters_by_ft['markdown'] = { 'markdownlint' }
      --
      -- However, note that this will enable a set of default linters,
      -- which will cause errors unless these tools are available:
      -- {
      --   clojure = { "clj-kondo" },
      --   dockerfile = { "hadolint" },
      --   inko = { "inko" },
      --   janet = { "janet" },
      --   json = { "jsonlint" },
      --   markdown = { "vale" },
      --   rst = { "vale" },
      --   ruby = { "ruby" },
      --   terraform = { "tflint" },
      --   text = { "vale" }
      -- }
      --
      -- You can disable the default linters by setting their filetypes to nil:
      -- lint.linters_by_ft['clojure'] = nil
      -- lint.linters_by_ft['dockerfile'] = nil
      -- lint.linters_by_ft['inko'] = nil
      -- lint.linters_by_ft['janet'] = nil
      -- lint.linters_by_ft['json'] = nil
      -- lint.linters_by_ft['markdown'] = nil
      -- lint.linters_by_ft['rst'] = nil
      -- lint.linters_by_ft['ruby'] = nil
      -- lint.linters_by_ft['terraform'] = nil
      -- lint.linters_by_ft['text'] = nil

      -- Create autocommand which carries out the actual linting
      -- on the specified events.
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          -- Only run the linter in buffers that you can modify in order to
          -- avoid superfluous noise, notably within the handy LSP pop-ups that
          -- describe the hovered symbol using Markdown.
          if vim.bo.modifiable then
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
