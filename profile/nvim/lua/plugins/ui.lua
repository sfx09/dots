return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "dragon",
			transparent = true,
			colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
		},
		init = function()
			vim.cmd([[colorscheme kanagawa]])
		end,
	},
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
			"stevearc/dressing.nvim",
		},
		init = function()
			vim.api.nvim_set_keymap("n", "<leader>cd", "<CMD>Noice dismiss<CR>", {})
			vim.api.nvim_set_keymap("n", "<leader>ch", "<CMD>Noice history<CR>", {})
		end,
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
			},
			routes = {
				{
					view = "notify",
					filter = { event = "msg_showmode" },
				},
			},
		},
	},
}
