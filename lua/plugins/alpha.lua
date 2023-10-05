return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  commit = "dafa11a6218c2296df044e00f88d9187222ba6b0",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    math.randomseed(os.time())
    local random = math.random(0, 1)

    if (random == 1) then
      dashboard.section.header.val = {
        [[          :^!7777!~^:.                  ]],
        [[      .^7JY?!^:^^!77!^:~!77!~:          ]],
        [[     .JYYY^      .~7JJJ?!~~~~!7~.       ]],
        [[      7YYY7    ~?J?!^.        .^7!.     ]],
        [[       !YYY7   ~^.         :?!.  YY~    ]],
        [[        ^JYY?.              :7Y!.~YY.   ]],
        [[     ~7. .7Y5J:               ^JJ^:7.   ]],
        [[   .?YYY~  :?YY~                7Y7.    ]],
        [[  :JYYYY?    ^JY?:            ~^ ~YJ^   ]],
        [[ :YYYYY7       ^?!         .~J5?. ^YY~  ]],
        [[ JYYYY?                  :!J5Y~    ~YY^ ]],
        [[ ?YYYY?.              :!?Y5J~.      JYJ ]],
        [[ .7YYYYY!.        :^7JY5Y?~        .JY? ]],
        [[   :?YYYYY7^::^!7JYY5YJ!:  .~~:   .?5J. ]],
        [[     ^JYYYYYYYYYYYYJ7^.  ^?YYYYJ77J5?.  ]],
        [[       ^?YYYYYYY?!:.     :!?JYYY55Y!    ]],
        [[         :~!!~:.            .:~!7!:     ]],
      }
    else
      dashboard.section.header.val = {
        [[                                                  ]],
        [[                                                  ]],
        [[    *%#.     -%%%: .---: -%%%=     .++++      #%%*]],
        [[    *%%#.    -%%%: .---:  #%%#     +%%%%:    -%%%:]],
        [[+++-.#%%*    -%%%: .---:  -%%%=    #%%%%+    *%%# ]],
        [[%%%+ .#%%*   -%%%: :###=   #%%#   -%%#%%%.  .%%%= ]],
        [[%%%+  :#%%+  -%%%: :%%%+   -%%%-  *%%:*%%=  +%%%  ]],
        [[%%%+   :%%%+ -%%%: :%%%+    #%%# .%%# -%%#  #%%+  ]],
        [[%%%+    :%%%+-%%%: :%%%+    =%%%:=%%=  #%%--%%%.  ]],
        [[%%%+     -%%%#%%%: :%%%+     #%%##%%.  =%%##%%*   ]],
        [[                                                  ]],
        [[                                                  ]],
      }
    end

    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
      dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
      dashboard.button("q", " " .. " Quit", ":qa<CR>"),
    }
    local function footer()
      return "Bruno Braga"
    end

    dashboard.section.footer.val = footer()

    dashboard.section.footer.opts.hl = "Type"
    dashboard.section.header.opts.hl = "Include"
    dashboard.section.buttons.opts.hl = "Keyword"

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end
}
