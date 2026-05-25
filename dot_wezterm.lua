-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 13
config.font = wezterm.font("Maple Mono Normal NF CN")
config.color_scheme = "ayu"
-- 窗口外观
config.window_decorations = "RESIZE" -- 隐藏标题栏以获得更多空间
config.window_background_opacity = 0.8 -- 设置透明度
config.macos_window_background_blur = 30 -- 设置模糊半径（建议值 20-50）-
--
-- Finally, return the configuration to wezterm:
return config
