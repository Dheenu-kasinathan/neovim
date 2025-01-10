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
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#604A4A", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#5C5742", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#4A5A60", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#605242", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#4A604A", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#594A60", blend = 80 })
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#4A6060", blend = 80 })
		end)

		-- Pass the options to the plugin setup
		require("ibl").setup(opts)
	end,
}
