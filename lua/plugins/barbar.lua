return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  init = function()
    vim.g.barbar_auto_setup = false

    vim.keymap.set("n", "<C-h>", "<Cmd>BufferPrevious<CR>", {})
    vim.keymap.set("n", "<C-l>", "<Cmd>BufferNext<CR>", {})
    vim.keymap.set("n", "<C-x>", "<Cmd>BufferClose<CR>", {})
  end,
  opts = {
    animation = true,
    insert_at_start = true,
    sidebar_filetypes = {
      ["neo-tree"] = { event = "BufWinLeave", text = "File Explorer" },
    },
  },
}
