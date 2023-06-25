local M = {}
local cmp = require "cmp"

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "go",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- golang
    "gopls",

    -- python
    -- pyright
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  view = {
    side = "right",
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.cmp = {
  preselect = cmp.PreselectMode.None,
  completion = {
    completeopt = "menu,menuone,noselect,preview",
  },
  mapping = {
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = false,
    },
  },
}

return M
