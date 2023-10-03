local M = {
  -- "folke/tokyonight.nvim",
  -- commit = "e52c41314e83232840d6970e6b072f9fba242eb9",
  -- "olimorris/onedarkpro.nvim",
  -- 'marko-cerovac/material.nvim',
  -- "themercorp/themer.lua",
  "catppuccin/nvim",
  priority = 1000,
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
}


M.name = "catppuccin"
function M.config()
  require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = {         -- :h background
      light = "latte",
      dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
    term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
      enabled = false,              -- dims the background color of inactive window
      shade = "dark",
      percentage = 0.15,            -- percentage of the shade to apply to the inactive window
    },
    no_italic = false,              -- Force no italic
    no_bold = false,                -- Force no bold
    no_underline = false,           -- Force no underline
    styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
      comments = { "italic" },      -- Change the style of comments
      conditionals = { "italic" },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      notify = false,
      mini = false,
      -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  })
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
