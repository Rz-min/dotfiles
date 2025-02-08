local wezterm = require 'wezterm'


local config = wezterm.config_builder()
config.automatically_reload_config = true
config.font_size = 15.0
config.window_background_opacity = 0.85

config.color_scheme = 'AdventureTime'

return config