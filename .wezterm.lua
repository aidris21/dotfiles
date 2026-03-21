-- Pull in the wezterm API
local wezterm = require 'wezterm'

local mux = wezterm.mux
local act = wezterm.action

-- Maximize window on startup
wezterm.on('gui-startup', function()
 local tab, pane, window = mux.spawn_window({})
 window:gui_window():maximize()
end)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- my coolnight colorscheme:
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

config.keys = {
  { key = ")",        mods = "CMD",  action = act.ResetFontSize },
  { key = "Enter",    mods = "CTRL", action = act.SendString("\n") },
  { key = "Enter",    mods = "SHIFT", action = act.SendString("\n") },
  { key = "-",        mods = "CMD",  action = act.DecreaseFontSize },
  { key = "=",        mods = "CMD",  action = act.IncreaseFontSize },
  { key = "N",        mods = "CMD",  action = act.SpawnWindow },
  { key = "P",        mods = "CMD",  action = act.ActivateCommandPalette },
  { key = "V",        mods = "CMD",  action = act.PasteFrom("Clipboard") },
  { key = "Copy",     mods = "NONE", action = act.CopyTo("Clipboard") },
  { key = "Paste",    mods = "NONE", action = act.PasteFrom("Clipboard") },
}

--  return the configuration to wezterm
return config
