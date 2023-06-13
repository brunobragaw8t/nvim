return {
  "RRethy/vim-illuminate",
  commit = "d6ca7f77eeaf61b3e6ce9f0e5a978d606df44298",
  event = "VeryLazy",
  config = function()
    local illuminate = require("illuminate")

    vim.g.Illuminate_ftblacklist = { "alpha", "NvimTree" }

    illuminate.configure({
      delay = 200,
      filetypes_denylist = {
        "dirvish",
        "fugitive",
        "alpha",
        "NvimTree",
        "packer",
        "neogitstatus",
        "Trouble",
        "lir",
        "Outline",
        "spectre_panel",
        "toggleterm",
        "DressingSelect",
        "TelescopePrompt",
      },
    })
  end
}
