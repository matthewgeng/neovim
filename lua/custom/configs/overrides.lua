local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    -- "html",
    -- "css",
    -- "javascript",
    -- "typescript",
    -- "tsx",
    "c",
    "cpp",
    "markdown",
    "markdown_inline",
    "go",
    "python",
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
    "golines",
    "goimports",

    -- python
    "pyright",
    "black",

    -- c
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",
    
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  view = {
    side = "right",
    preserve_window_proportions = true,
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

-- Prevent error during the initial Lazy bootstrap:
--   Error detected while processing ~/.config/nvim/init.lua:
--   Failed to load `custom.plugins`
--   ~/.config/nvim/lua/custom/plugins.lua:1: loop or previous error loading module 'custom.configs.overrides'
local cmp_ok, cmp = pcall(require, "cmp")

if cmp_ok then
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
end

return M
