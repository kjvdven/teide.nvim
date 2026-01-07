local util = require("teide.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local theme = util.template(
    [[
system: "base16"
name: "Teide"
author: "Sergio Hernandez"
variant: "${_style}"
palette:
  base00: ${bg}
  base01: ${bg_popup}
  base02: ${diff.text}
  base03: ${terminal.black_bright}
  base04: ${terminal.blue_bright}
  base05: ${fg_sidebar_inactive}
  base06: ${fg_sidebar}
  base07: ${fg}
  base08: ${terminal.red}
  base09: ${orange}
  base0A: ${terminal.yellow}
  base0B: ${terminal.green}
  base0C: ${terminal.blue}
  base0D: ${terminal.magenta}
  base0E: ${terminal.magenta_bright}
  base0F: ${terminal.red_bright}
]],
    colors
  )
  return theme
end

return M
