local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "â",
      package_pending = "îȘ",
      package_uninstalled = "ï",
    },
  },
})
