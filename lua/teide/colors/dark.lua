local Util = require("teide.util")

local bg = "#1D2228"
local colors = vim.deepcopy(require("teide.colors.darker"))

colors.bg = bg
colors.bg_dark = Util.blend(bg, 0.75, "#000000")
colors.bg_darker = Util.blend(bg, 0.65, "#000000")
colors.bg_dimmed = Util.blend(bg, 0.85, "#000000")

return colors
