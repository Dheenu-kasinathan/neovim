return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			},
			char = "▏",
		},
		scope = {
			show_start = false,
			show_end = false,
			show_exact_scope = false,
		},
		exclude = {
			filetypes = {
				"help",
				"startify",
				"dashboard",
				"packer",
				"neogitstatus",
				"NvimTree",
				"Trouble",
			},
		},
	},
	config = function(_, opts)
		local hooks = require("ibl.hooks")
		-- Create the highlight groups in the highlight setup hook
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#F2B6B8", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#F6E3AE", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#A3D8F4", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#F2C6A0", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#C8E6C9", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#E0BBE4", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#B2EBF2", blend = 80 })
		end)

		-- Pass the options to the plugin setup
		require("ibl").setup(opts)
	end,
}
