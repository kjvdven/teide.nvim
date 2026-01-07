local util = require("teide.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local theme = util.template(
    [[
system: "base24"
name: "Teide"
author: "Sergio Hernandez"
variant: "${_name}"
palette:
  base00: ${bg}
  base01: ${bg_popup}
  base02: ${bg_visual}
  base03: ${comment}
  base04: ${fg_sidebar_inactive}
  base05: ${fg}
  base06: ${blue5}
  base07: ${fg}
  base08: ${magenta2}
  base09: ${yellow1}
  base0A: ${orange}
  base0B: ${green}
  base0C: ${blue}
  base0D: ${blue2}
  base0E: ${magenta}
  base0F: ${red1}
  base10: ${bg_dark}
  base11: ${bg_darker}
  base12: ${red}
  base13: ${yellow}
  base14: ${teal}
  base15: ${cyan}
  base16: ${blue1}
  base17: ${magenta}
]],
    colors
  )
  return theme
end

return M
