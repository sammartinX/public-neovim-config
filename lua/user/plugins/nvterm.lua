return {
  "NvChad/nvterm",
  version = "*",
  enabled = true,
  config = function()
    require("nvterm").setup({
      terminals = {
        shell = vim.o.shell,
        list = {},
        type_opts = {
          float = {
            relative = "editor",
            row = 0.3,
            col = 0.25,
            width = 0.5,
            height = 0.4,
            border = "single",
            style = "minimal",
          },
          horizontal = { location = "rightbelow", split_ratio = 0.3 },
          vertical = { location = "rightbelow", split_ratio = 0.5 },
        },
      },
      behavior = {
        autoclose_on_quit = {
          enabled = false,
          confirm = true,
        },
        close_on_exit = true,
        auto_insert = true,
      },
    })

    -- Key-Mappings
    local keymap = vim.keymap

    keymap.set("n", "<A-i>", function()
      require("nvterm.terminal").toggle("float")
    end, { desc = "Toggle floating term" })

    keymap.set("n", "<A-h>", function()
      require("nvterm.terminal").toggle("horizontal")
    end, { desc = "Toggle horizontal term" })

    keymap.set("n", "<A-v>", function()
      require("nvterm.terminal").toggle("vertical")
    end, { desc = "Toggle vertical term" })

    keymap.set("n", "<leader>h", function()
      require("nvterm.terminal").new("horizontal")
    end, { desc = "New horizontal term" })

    keymap.set("n", "<leader>v", function()
      require("nvterm.terminal").new("vertical")
    end, { desc = "New vertical term" })

    keymap.set("t", "<Esc>", "<C-\\><C-n>:q!<CR>", { desc = "Close terminal" })
  end,
}
