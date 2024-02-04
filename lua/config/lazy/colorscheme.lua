function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
      "catppuccin/nvim",
      name = "catppuccin",
      config = function()
        require("catppuccin").setup({
          term_colors = true,
			    transparent_background = true,
			    styles = {
				    comments = {},
				    conditionals = {},
				    loops = {},
				    functions = {},
				    keywords = {},
				    strings = {},
				    variables = {},
				    numbers = {},
				    booleans = {},
				    properties = {},
				    types = {},
			    },
			    color_overrides = {
				    mocha = {
					    base = "#000000",
					    mantle = "#000000",
					    crust = "#000000",
				    },
			    },
			    integrations = {
				    telescope = {
					    enabled = true,
					    style = "nvchad",
				    },
				    dropbar = {
					    enabled = true,
					    color_mode = true,
				    },
			    },
        })
        -- vim.cmd("colorscheme catppuccin")
        -- ColorMyPencils("catppuccin")
      end

    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                variant = "moon",
                styles = {
                    bold = true,
                    italic = true,
                    transparency = true,
                },
                highlight_groups = {
                  TelescopeBorder = { fg = "highlight_high", bg = "none" },
                  TelescopeNormal = { bg = "none" },
                  TelescopePromptNormal = { bg = "base" },
                  TelescopeResultsNormal = { fg = "subtle", bg = "none" },
                  TelescopeSelection = { fg = "text", bg = "base" },
                  TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
                },
            })
        vim.cmd("colorscheme rose-pine")
        ColorMyPencils("rose-pine")

       end
    },

    {
        "aktersnurra/no-clown-fiesta.nvim",
        name = "no-clown-fiesta",
        config = function()
            require("no-clown-fiesta").setup({
                transparent = true, -- Enable this to disable the bg color
                styles = {
                  -- You can set any of the style values specified for `:h nvim_set_hl`
                  comments = {},
                  keywords = {},
                  functions = {},
                  variables = {},
                  type = { bold = true },
                  lsp = { underline = true }
                },
              })

        end
    },


}
