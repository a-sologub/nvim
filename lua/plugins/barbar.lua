return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false

		vim.keymap.set("n", "<Leader>h", "<Cmd>BufferPrevious<CR>", {})
		vim.keymap.set("n", "<Leader>l", "<Cmd>BufferNext<CR>", {})
		vim.keymap.set("n", "<Leader>x", "<Cmd>BufferClose<CR>", {})
	end,
	opts = {
		animation = true,
		insert_at_start = true,
	},
}
