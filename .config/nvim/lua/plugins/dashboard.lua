return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    lazy = false,
    opts = function(_, opts)
        local logo = [[
                                 Z
                              Z
        msrks - LazyVim   z

 _ __   ___  _____   _(_)_ __ ___  
| '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
| | | |  __/ (_) \ V /| | | | | | |
|_| |_|\___|\___/ \_/ |_|_| |_| |_|

        ]]
        logo = string.rep("\n", 8) .. logo .. "\n\n"
        opts.config.header = vim.split(logo, "\n")
        opts.theme = "doom"
    end,
}
