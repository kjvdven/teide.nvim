local util = require("teide.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-teide-${_style}-bg: oklch(from ${bg} l c h);
  --color-teide-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-teide-${_style}-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-teide-${_style}-bg-float: var(--color-teide-${_style}-bg-dark);
  --color-teide-${_style}-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-teide-${_style}-bg-popup: var(--color-teide-${_style}-bg-dark);
  --color-teide-${_style}-bg-search: var(--color-teide-${_style}-blue0);
  --color-teide-${_style}-bg-sidebar: var(--color-teide-${_style}-bg-dark);
  --color-teide-${_style}-bg-statusline: var(--color-teide-${_style}-bg-dark);
  --color-teide-${_style}-bg-visual: oklch(from ${bg_visual} l c h);
  --color-teide-${_style}-black: oklch(from ${black} l c h);
  --color-teide-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-teide-${_style}-blue: oklch(from ${blue} l c h);
  --color-teide-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-teide-${_style}-blue0: oklch(from ${blue0} l c h);
  --color-teide-${_style}-blue1: oklch(from ${blue1} l c h);
  --color-teide-${_style}-blue2: oklch(from ${blue2} l c h);
  --color-teide-${_style}-blue5: oklch(from ${blue5} l c h);
  --color-teide-${_style}-blue6: oklch(from ${blue6} l c h);
  --color-teide-${_style}-blue7: oklch(from ${blue7} l c h);
  --color-teide-${_style}-border: var(--color-teide-${_style}-black);
  --color-teide-${_style}-border-highlight: oklch(from ${border_highlight} l c h);
  --color-teide-${_style}-comment: oklch(from ${comment} l c h);
  --color-teide-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-teide-${_style}-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-teide-${_style}-dark3: oklch(from ${dark3} l c h);
  --color-teide-${_style}-dark5: oklch(from ${dark5} l c h);
  --color-teide-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-teide-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-teide-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-teide-${_style}-diff-text: var(--color-teide-${_style}-blue7);
  --color-teide-${_style}-error: var(--color-teide-${_style}-red1);
  --color-teide-${_style}-fg: oklch(from ${fg} l c h);
  --color-teide-${_style}-fg-dark: oklch(from ${fg_dark} l c h);
  --color-teide-${_style}-fg-float: var(--color-teide-${_style}-fg);
  --color-teide-${_style}-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-teide-${_style}-fg-sidebar: var(--color-teide-${_style}-fg-dark);
  --color-teide-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-teide-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-teide-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-teide-${_style}-git-ignore: var(--color-teide-${_style}-dark3);
  --color-teide-${_style}-green: oklch(from ${green} l c h);
  --color-teide-${_style}-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-teide-${_style}-green1: oklch(from ${green1} l c h);
  --color-teide-${_style}-green2: oklch(from ${green2} l c h);
  --color-teide-${_style}-hint: var(--color-teide-${_style}-teal);
  --color-teide-${_style}-info: var(--color-teide-${_style}-blue2);
  --color-teide-${_style}-magenta: oklch(from ${magenta} l c h);
  --color-teide-${_style}-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-teide-${_style}-magenta2: oklch(from ${magenta2} l c h);
  --color-teide-${_style}-orange: oklch(from ${orange} l c h);
  --color-teide-${_style}-purple: oklch(from ${purple} l c h);
  --color-teide-${_style}-rainbow1: var(--color-teide-${_style}-blue);
  --color-teide-${_style}-rainbow2: var(--color-teide-${_style}-yellow);
  --color-teide-${_style}-rainbow3: var(--color-teide-${_style}-green);
  --color-teide-${_style}-rainbow4: var(--color-teide-${_style}-teal);
  --color-teide-${_style}-rainbow5: var(--color-teide-${_style}-magenta);
  --color-teide-${_style}-rainbow6: var(--color-teide-${_style}-purple);
  --color-teide-${_style}-rainbow7: var(--color-teide-${_style}-orange);
  --color-teide-${_style}-rainbow8: var(--color-teide-${_style}-red);
  --color-teide-${_style}-red: oklch(from ${red} l c h);
  --color-teide-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-teide-${_style}-red1: oklch(from ${red1} l c h);
  --color-teide-${_style}-teal: oklch(from ${teal} l c h);
  --color-teide-${_style}-todo: var(--color-teide-${_style}-blue);
  --color-teide-${_style}-warning: var(--color-teide-${_style}-yellow);
  --color-teide-${_style}-yellow: oklch(from ${yellow} l c h);
  --color-teide-${_style}-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
