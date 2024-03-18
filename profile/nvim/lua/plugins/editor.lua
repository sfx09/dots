return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "BufEnter",
		opts = {
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = { preview_width = 0.55 },
				},
			},
		},
		keys = {
			{ "<leader><leader>", "<CMD>Telescope find_files<CR>" },
			{ "<leader>fb", "<CMD>Telescope buffers<CR>" },
			{ "<leader>fd", "<CMD>Telescope diagnostics<CR>" },
			{ "<leader>ff", "<CMD>Telescope git_files<CR>" },
			{ "<leader>fg", "<CMD>Telescope live_grep<CR>" },
			{ "<leader>fh", "<CMD>Telescope help_tags<CR>" },
		},
	},
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		init = function()
			vim.api.nvim_set_keymap("n", "<leader>o", "<CMD>lua require('oil').toggle_float()<CR>", {})
		end,
		opts = {
			keymaps = { ["q"] = "actions.close" },
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{ "tpope/vim-fugitive" },
	{
		"norcalli/nvim-colorizer.lua",
		opts = {},
	},
}
