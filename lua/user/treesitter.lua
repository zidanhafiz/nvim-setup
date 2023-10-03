local M = {
  "nvim-treesitter/nvim-treesitter",
  commit = "226c1475a46a2ef6d840af9caa0117a439465500",
  event = "BufReadPost",
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
      commit = "729d83ecb990dc2b30272833c213cc6d49ed5214",
    },
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy",
    },
    {
      "windwp/nvim-ts-autotag",
      ft = {
        "html",
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
        -- "svelte",
        -- "vue",
        "tsx",
        "jsx",
        -- "rescript",
        "xml",
        "php",
        -- "markdown",
        -- "glimmer",
        -- "handlebars",
        -- "hbs",

      },
      -- config = function ()
      --   setup
      -- end
    },
  },
}
function M.config()
  -- local treesitter = require "nvim-treesitter"
  local configs = require "nvim-treesitter.configs"

  configs.setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "html", "css", "javascript",
      "typescript", "tsx", "json", "vue", "svelte" },                                                                                                         -- put the language you want in this array
    -- ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" },                                                                                                                                  -- List of parsers to ignore installing
    sync_install = false,                                                                                                                                     -- install languages synchronously (only applied to `ensure_installed`)

    highlight = {
      enable = true,       -- false will disable the whole extension
      disable = { "css" }, -- list of language that will be disabled
    },
    autopairs = {
      enable = true,
    },
    autotag = {
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
    },
    indent = { enable = true, disable = { "python", "css" } },

    context_commentstring = {
      enable = true,
      enable_autocmd = true,
    },
  }
end

return M
