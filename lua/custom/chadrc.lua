---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,
  },

  -- for those using nvimtree on the right side and want the offset on right
  tabufline = {
    overriden_modules = function(modules)
       table.insert(modules, modules[1])
       table.remove(modules,1)
      -- or modules[1] = ""
    end,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
