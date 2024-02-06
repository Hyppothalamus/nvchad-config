---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M = {
  ui = {
    theme = "catppuccin",

    hl_override = highlights.override,
    hl_add = highlights.add,
    -- transparency = true,
    nvdash = {
      load_on_startup = true,
    },

    telescope = {
      style = "bordered"
    },

    statusline = {
      theme = "minimal",
      separator_style = "round",
    }
  },

  plugins = "custom.plugins",

  -- check core.mappings for table structure
  mappings = require "custom.mappings",
}

return M
