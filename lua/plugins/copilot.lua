return {
  "zbirenbaum/copilot.lua",
  commit = "686670843e6f555b8a42fb0a269c1bbaee745421",
  cmd = 'Copilot',
  event = "InsertEnter",
  config = function ()
    require('copilot').setup({
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<M-a>",
        },
      },
    })
  end,
}
