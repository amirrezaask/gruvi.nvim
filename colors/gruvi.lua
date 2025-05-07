local base16 = require("gruvi.base16")
local RGB = base16.rgb

local style = vim.g.gruvi_style or "default"
local dark_base = "#282c34"

if style == "dark" then
  dark_base = "#111416"
end

local colors = { -- Colors are insipired by @tjdevries ( https://github.com/tjdevries/colorbuddy.nvim )
  -- UI
  RGB.from_hex(dark_base), -- base00
  RGB.from_hex(dark_base):lighten(0.1), -- base01
  RGB.from_hex("#81A2BE"), -- base02
  RGB.from_hex("#969896"), -- base03
  RGB.from_hex("#373B41"), -- base04
  RGB.from_hex("#e0e0e0"), -- base05
  RGB.from_hex(dark_base):lighten(0.15), -- base06
  RGB.from_hex(dark_base):lighten(0.20), -- base07

  -- Syntax
  RGB.from_hex("#cc6666"), -- base08
  RGB.from_hex("#DE935F"), -- base09
  RGB.from_hex("#B294BB"), -- base0A
  RGB.from_hex("#99CC99"), -- base0B
  RGB.from_hex("#A992CD"), -- base0C
  RGB.from_hex("#F8FE7A"), -- base0D
  RGB.from_hex("#B294BB"), -- base0E
  RGB.from_hex("#E6B3B3"), -- base0F
}

base16.theme.new("gruvi", colors):apply()

if vim.g.gruvbuddy_transparent then
  vim.cmd [[
    hi Normal guibg=none
    hi NormalFloat guibg=none
    hi NormalNC guibg=none
    hi FloatBorder guibg=none
    hi SignColumn guibg=none
    hi LineNr guibg=none
  ]]
end

-- Fzflua
vim.api.nvim_set_hl(0, "FzfLuaFzfMatch", { link = "Number" })
vim.api.nvim_set_hl(0, "FzfLuaFzfPrompt", { link = "LineNr" })

-- Snacks
vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = colors[6]:to_hex() })
vim.api.nvim_set_hl(0, "SnacksPickerMatch", { link = "Number" })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeMatching", { link = "Number" })
vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "CursorLine" })

-- Statusline
vim.cmd [[
  hi default link StatusLineNormal    StatusLine
  hi default link StatusLineInsert    StatusLine
  hi default link StatusLineVisual    StatusLine
  hi default link StatusLineCommand   StatusLine
  hi default link StatusLineReplace   StatusLine
  hi default link StatusLineSelect    StatusLine
  hi default link StatusLineTerminal  StatusLine
  hi default link StatusLineGitBranch StatusLine
  hi default link StatusLineGitStatus StatusLine
]]
