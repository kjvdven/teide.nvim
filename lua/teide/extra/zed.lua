local util = require("teide.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local appearance = (colors._style == "light") and "light" or "dark"

  local editor_bg = colors.bg
  local panel_bg = colors.bg_sidebar
  local terminal_bg = colors.bg
  local gutter_bg = colors.bg
  local toolbar_bg = colors.bg
  local tab_active_bg = colors.bg
  local tab_inactive_bg = colors.bg_dark

  if appearance == "light" then
    -- We use the base 'bg' (which is grey-ish in light mode) instead of 'bg_darker' (white)
    editor_bg = colors.bg
    gutter_bg = colors.bg
    toolbar_bg = colors.bg
    tab_active_bg = colors.bg

    -- Make panel/sidebar slightly darker than the editor for contrast
    panel_bg = util.darken(colors.bg, 0.96)
    tab_inactive_bg = util.darken(colors.bg, 0.96)
    terminal_bg = util.darken(colors.bg, 0.96)
  end

  local theme = {
    name = colors._style_name,
    author = "Teide",
    themes = {
      {
        name = colors._style_name,
        appearance = appearance,
        style = {
          background = editor_bg,
          foreground = colors.fg,

          ["border"] = colors.border,
          ["border.variant"] = colors.border_highlight,
          ["border.focused"] = colors.blue,
          ["border.selected"] = colors.blue,
          ["border.disabled"] = colors.fg_gutter,

          ["elevated_surface.background"] = panel_bg,
          ["surface.background"] = panel_bg,
          ["panel.background"] = panel_bg,

          ["element.background"] = colors.bg_visual,
          ["element.hover"] = colors.bg_highlight,
          ["element.active"] = colors.blue0,
          ["element.selected"] = colors.bg_visual,
          ["element.disabled"] = colors.bg_dark,

          ["text"] = colors.fg,
          ["text.muted"] = colors.comment,
          ["text.placeholder"] = colors.fg_gutter,
          ["text.disabled"] = colors.fg_gutter,
          ["text.accent"] = colors.blue,

          ["icon"] = colors.fg,
          ["icon.muted"] = colors.fg_dark,
          ["icon.disabled"] = colors.fg_gutter,
          ["icon.accent"] = colors.blue,

          ["status_bar.background"] = colors.bg_statusline,
          ["title_bar.background"] = panel_bg,
          ["title_bar.inactive_background"] = terminal_bg,
          ["toolbar.background"] = toolbar_bg,
          ["tab_bar.background"] = panel_bg,
          ["tab.inactive_background"] = tab_inactive_bg,
          ["tab.active_background"] = tab_active_bg,

          ["search.match_background"] = colors.bg_search,

          ["editor.foreground"] = colors.fg,
          ["editor.background"] = editor_bg,
          ["editor.gutter.background"] = gutter_bg,
          ["editor.subheader.background"] = panel_bg,
          ["editor.active_line.background"] = colors.bg_highlight,
          ["editor.highlighted_line.background"] = colors.bg_highlight,
          ["editor.line_number"] = colors.fg_gutter,
          ["editor.active_line_number"] = colors.fg,
          ["editor.invisible"] = colors.fg_gutter,

          ["terminal.background"] = terminal_bg,
          ["terminal.foreground"] = colors.fg,
          ["terminal.ansi.black"] = colors.terminal.black,
          ["terminal.ansi.red"] = colors.terminal.red,
          ["terminal.ansi.green"] = colors.terminal.green,
          ["terminal.ansi.yellow"] = colors.terminal.yellow,
          ["terminal.ansi.blue"] = colors.terminal.blue,
          ["terminal.ansi.magenta"] = colors.terminal.magenta,
          ["terminal.ansi.cyan"] = colors.terminal.cyan,
          ["terminal.ansi.white"] = colors.terminal.white,
          ["terminal.ansi.bright_black"] = colors.terminal.black_bright,
          ["terminal.ansi.bright_red"] = colors.terminal.red_bright,
          ["terminal.ansi.bright_green"] = colors.terminal.green_bright,
          ["terminal.ansi.bright_yellow"] = colors.terminal.yellow_bright,
          ["terminal.ansi.bright_blue"] = colors.terminal.blue_bright,
          ["terminal.ansi.bright_magenta"] = colors.terminal.magenta_bright,
          ["terminal.ansi.bright_cyan"] = colors.terminal.cyan_bright,
          ["terminal.ansi.bright_white"] = colors.terminal.white_bright,

          -- Git / Diagnostics
          ["created"] = colors.git.add,
          ["modified"] = colors.git.change,
          ["deleted"] = colors.git.delete,
          ["conflict"] = colors.warning,
          ["error"] = colors.error,
          ["warning"] = colors.warning,
          ["info"] = colors.info,
          ["hint"] = colors.hint,

          -- Cursor / Selection
          players = {
            {
              cursor = colors.fg,
              background = colors.bg_visual,
              selection = colors.bg_visual,
            }
          },

          syntax = {
            comment = { color = colors.comment, font_style = "italic" },
            ["comment.doc"] = { color = colors.comment, font_style = "italic" },
            keyword = { color = colors.magenta2 },
            string = { color = colors.green },
            ["string.regex"] = { color = colors.blue },
            ["string.escape"] = { color = colors.magenta },
            type = { color = colors.yellow1 },
            number = { color = colors.green },
            constant = { color = colors.green1 },
            ["function"] = { color = colors.blue },
            ["function.method"] = { color = colors.blue },
            operator = { color = colors.magenta },
            variable = { color = colors.fg },
            ["variable.special"] = { color = colors.blue1 },
            property = { color = colors.blue5 },
            attribute = { color = colors.magenta },
            punctuation = { color = colors.dark6 },
            ["punctuation.bracket"] = { color = colors.dark6 },
            ["punctuation.delimiter"] = { color = colors.dark6 },
            constructor = { color = colors.orange },
            boolean = { color = colors.green },
            tag = { color = colors.red },
          }
        }
      }
    }
  }

  return vim.json.encode(theme)
end

return M
