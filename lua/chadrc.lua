-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M  = {}

M.base46 = {
  theme = "catppuccin",

  SpellBad = { bg = "#770000", fg = "#ffffff" },
  hl_override = {
    SpellBad = { bg = "#770000", fg = "#ffffff" },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

-- M.nvdash = { load_on_startup = true }
M.ui
         = {
  SpellBad = { bg = "#770000", fg = "#ffffff" },
  tabufline = {
    enabled = false
  }
}

return M
