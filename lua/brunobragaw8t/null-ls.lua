local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.diagnostics.php,
    null_ls.builtins.code_actions.php,
  },
})
