---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- clear search
    ["<leader>cs"] = {
      "<cmd> :set hlsearch!<CR>",
      "clearing"
    }

    --  format with conform
    -- ["<leader>fm"] = {
    --   function()
    --     require("conform").format()
    --   end,
    --   "formatting",
    -- }

  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
