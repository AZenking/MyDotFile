return {
  -- 添加 kanagawa 插件
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- 必须设置为 false，因为要在启动时加载
    priority = 1000, -- 确保它在其他插件之前加载
    opts = {
      -- 这里可以添加你的配置，参考插件文档
      -- theme = "wave", -- 默认是 "wave"，可选 "dragon", "lotus"
      background = {
        dark = "wave", -- 或 "dragon"
        light = "lotus",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
