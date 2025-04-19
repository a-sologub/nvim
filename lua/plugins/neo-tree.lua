return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  config = function()
    require('neo-tree').setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false
        },
        follow_current_file = {
          enabled = true,
        },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            added     = "",
            modified  = "",
            deleted   = "",
            renamed   = "➜",
            untracked = "★",
            ignored   = "◌",
            unstaged  = "✗",
            staged    = "✓",
            conflict  = "",
          }
        }
      }
    })

    -- Toggle Neo-tree
    vim.keymap.set('n', '<C-n>', function()
      local neotree_open = false
      for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)
        local ft = vim.api.nvim_buf_get_option(buf, 'filetype')
        if ft == 'neo-tree' then
          neotree_open = true
          break
        end
      end
      if neotree_open then
        vim.cmd('Neotree close')
      else
        vim.cmd('Neotree filesystem reveal left')
      end
    end, { noremap = true, silent = true })

    vim.keymap.set('n', '<leader>e', ':Neotree filesystem focus left<CR>')
    vim.keymap.set('n', '<leader>f', '<C-w>p', { desc = "Focus previous window" })

  end,
}
