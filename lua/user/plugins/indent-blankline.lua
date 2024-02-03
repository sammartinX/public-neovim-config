return {
  "lukas-reineke/indent-blankline.nvim",
  enabled = true,
  -- event = "LazyFile",
  config = function()
    require("ibl").setup({
      indent = {
        char = "│",
        tab_char = "▏",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neotree",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    })
  end,
  main = "ibl",
}
