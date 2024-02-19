return {

  -- Change cursor highlight color based on vim mode
  {
    "mvllow/modes.nvim",
    event = "VeryLazy",
    opts = {
      colors = {
        copy = "#f5c359",
        delete = "#c75c6a",
        insert = "#78ccc5",
        visual = "#9745be",
      },
      line_opacity = 0.15,
      set_cursor = true,
      set_cursorline = true,
      set_number = true,
      ignore_filetypes = { "neo-tree", "TelescopePrompt", "neogitstatus", "lazy", "veil" },
    },
  },
}
