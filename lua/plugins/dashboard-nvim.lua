return {
  "nvimdev/dashboard-nvim",
  opts = function()
    math.randomseed(os.time())
    local random = math.random(0, 1)
    local logo = [[]]

    if random == 1 then
      logo = [[
          :^!7777!~^:.                  
      .^7JY?!^:^^!77!^:~!77!~:          
     .JYYY^      .~7JJJ?!~~~~!7~.       
      7YYY7    ~?J?!^.        .^7!.     
       !YYY7   ~^.         :?!.  YY~    
        ^JYY?.              :7Y!.~YY.   
     ~7. .7Y5J:               ^JJ^:7.   
   .?YYY~  :?YY~                7Y7.    
  :JYYYY?    ^JY?:            ~^ ~YJ^   
 :YYYYY7       ^?!         .~J5?. ^YY~  
 JYYYY?                  :!J5Y~    ~YY^ 
 ?YYYY?.              :!?Y5J~.      JYJ 
 .7YYYYY!.        :^7JY5Y?~        .JY? 
   :?YYYYY7^::^!7JYY5YJ!:  .~~:   .?5J. 
     ^JYYYYYYYYYYYYJ7^.  ^?YYYYJ77J5?.  
       ^?YYYYYYY?!:.     :!?JYYY55Y!    
         :~!!~:.            .:~!7!:     
]]
    else
      logo = [[
    *%#.     -%%%: .---: -%%%=     .++++      #%%*
    *%%#.    -%%%: .---:  #%%#     +%%%%:    -%%%:
+++-.#%%*    -%%%: .---:  -%%%=    #%%%%+    *%%# 
%%%+ .#%%*   -%%%: :###=   #%%#   -%%#%%%.  .%%%= 
%%%+  :#%%+  -%%%: :%%%+   -%%%-  *%%:*%%=  +%%%  
%%%+   :%%%+ -%%%: :%%%+    #%%# .%%# -%%#  #%%+  
%%%+    :%%%+-%%%: :%%%+    =%%%:=%%=  #%%--%%%.  
%%%+     -%%%#%%%: :%%%+     #%%##%%.  =%%##%%*   
]]
    end

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
          { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
          { action = 'lua LazyVim.pick("live_grep")()',                desc = " Find Text",       icon = " ", key = "g" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        },
        footer = function()
          return { "Bruno Braga" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- open dashboard after closing lazy
    if vim.o.filetype == "lazy" then
      vim.api.nvim_create_autocmd("WinClosed", {
        pattern = tostring(vim.api.nvim_get_current_win()),
        once = true,
        callback = function()
          vim.schedule(function()
            vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
          end)
        end,
      })
    end

    return opts
  end,
}
