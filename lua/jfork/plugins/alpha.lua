return {
    'goolord/alpha-nvim',
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Define your custom highlight groups
        vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#98C379" })

        -- Set header with ASCII art
        dashboard.section.header.val = {
            "                                                     ",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                     ",
      -- the ascii art below should be on the right of the screen
            -- "                                                      ",
            -- "                +=                                    ",
            -- "             =@ :*                                    ",
            -- "            *  * %                                    ",
            -- "           +     #+                                   ",
            -- "          =+ . ::++=                                  ",
            -- "          =+      := .@#@@#                           ",
            -- "           *.      .+   @+                            ",
            -- "          ++ * :...: #@=      ==                      ",
            -- "         #  =+ ====          *+  *+                   ",
            -- "        #@*.+=     ==        +#: . ++                 ",
            -- "        @ %*%#@+% +  =% ..+*####****@@*               ",
            -- "        @  +*    :     %  :############=*#            ",
            -- "        %*= +  *%%####*=    .*####*+=     =*          ",
            -- "         @########=          =##*:          *=        ",
            -- "      =#@*@%#####=                           *        ",
            -- "      =%=:=%@%###.              .@@:        +=        ",
            -- "          +%@%@%#.      :#*.    :@@@@      %+         ",
            -- "                +@+:.   ####%+         :+%=           ",
            -- "                    *@@#=       +:==+%*               ",
            -- "                     @.=..  .  **=                    ",
            -- "                     =@=  =  .+#                      ",
            -- "                        =%@@@@=                       ",
            -- "                                                      ",
            -- "                                                      ",
        }

        -- Use simple highlighting (entire section)
        dashboard.section.header.opts = {
            position = "center",
            hl = "AlphaHeader"
        }

        -- Set up buttons for FZF
        dashboard.section.buttons.val = {
            -- dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "  Find files", ":FzfLua files<CR>"),
            dashboard.button("g", "  Live grep", ":FzfLua live_grep<CR>"),
            dashboard.button("r", "  Recent files", ":FzfLua oldfiles<CR>"),
            dashboard.button("s", "  Settings", ":e $MYVIMRC<CR>"),
            dashboard.button("l", "  Lazy", ":Lazy<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        dashboard.section.buttons.opts.hl = "AlphaButtons"

        -- Set up alpha
        alpha.setup(dashboard.opts)
    end
}
