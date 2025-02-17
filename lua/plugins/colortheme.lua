return {

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd 'colorscheme rose-pine'
      local bg_transparent = false
      local toggle_transparency = function()
        bg_transparent = not bg_transparent
        require('rose-pine').setup {
          styles = {
            transparency = bg_transparent,
          },
        }
        vim.cmd 'colorscheme rose-pine' -- reapply colorscheme to reflect changes
      end

      vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
    end,
  },
  {
    'shaunsingh/nord.nvim',
    -- lazy = false,
    lazy = true,
    -- priority = 1000,
    -- config = function()
    --   -- example config in lua
    --   vim.g.nord_contrast = true
    --   vim.g.nord_borders = false
    --   vim.g.nord_disable_background = true
    --   vim.g.nord_italic = false
    --   vim.g.nord_uniform_diff_background = true
    --   vim.g.nord_bold = false
    --
    --   -- load the colorscheme
    --   -- require('nord').set()
    --
    --   -- toggle background transparency
    --   local bg_transparent = true
    --
    --   local toggle_transparency = function()
    --     bg_transparent = not bg_transparent
    --     vim.g.nord_disable_background = bg_transparent
    --     -- vim.cmd [[colorscheme nord]]
    --   end
    --
    --   -- vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
    -- end,
  },
}
