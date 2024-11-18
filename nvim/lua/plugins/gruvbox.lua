return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        config = function()

            require("gruvbox").setup({
              undercurl = true,
              underline = true,
              bold = true,
              italic = {
                strings = true,
                comments = true,
                operators = false,
                folds = true,
              },
              strikethrough = true,
              invert_selection = false,
              invert_signs = false,
              invert_tabline = false,
              invert_intend_guides = true,
              inverse = true, -- invert background for search, diffs, statuslines and errors
              contrast = "", -- can be "hard", "soft" or empty string
              palette_overrides = {

                --dark0 = "#1C1B18",
                dark0 = "#0C0C0C",
                dark1 = "#25231F"

              },
            overrides = {

                
                SignColumn = {bg = "#1C1B18"},
                -- ColorColumn = { bg = "#282828" },
                -- Function = { link = "GruvboxFg0" },
                -- Type = { link = "GruvboxFg1" },
                -- Identifier = { link = "GruvboxFg1" },
                -- Keyword = { link = "GruvboxRed" },
                -- Conditional = { link = "GruvboxOrange" },
                -- Constant = { link = "GruvboxFg1" },
                --
                -- ["@punctuation.delimiter"] = { link = "GruvboxFg1" },
                -- ["@punctuation.bracket"] = { link = "GruvboxFg1" },
                -- ["@punctuation.special"] = { link = "GruvboxFg1" },
                -- ["@operator"] = { link = "GruvboxFg1" },

              },


              dim_inactive = false,
              transparent_mode = false,
            })

        end,
    }
}
