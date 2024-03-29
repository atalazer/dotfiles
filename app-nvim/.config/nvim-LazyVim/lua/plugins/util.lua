local options = { noremap = true, silent = false }
return {
  {
    "CRAG666/code_runner.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    keys = {
      { "<leader>re", "<CMD>RunCode<CR>", options, desc = "Run and Execute" },
      { "<leader>rf", "<CMD>RunFile tab<CR>", options, desc = "Run File (int tab)" },
      { "<leader>rp", "<CMD>RunProject<CR>", options, desc = "Run Project" },
      { "<leader>rc", "<CMD>RunClose<CR>", options, desc = "Run Close" },
    },
    config = function()
      require("code_runner").setup({
        term = {
          position = "vertical",
          size = 60,
        },
        focus = true,
        startinsert = true,
        filetype = {
          c = {
            'cd $dir &&',
            'mkdir -p $dir/bin &&',
            'gcc "$fileName" -o "$dir/bin/$fileNameWithoutExt" &&',
            '"$dir/bin/$fileNameWithoutExt"',
          },
          cpp = {
            'cd "$dir" &&',
            'mkdir -p $dir/bin &&',
            'g++ -Wall -Wextra -O2 "$fileName" -o "$dir/bin/$fileNameWithoutExt" &&',
            '"$dir/bin/$fileNameWithoutExt"',
          },
          dart = {
            'cd "$dir" &&',
            'mkdir -p $dir/bin &&',
            'dart compile exe "$fileName" -o "$dir/bin/$fileNameWithoutExt" &&',
            '"$dir/bin/$fileNameWithoutExt"',
          },
        },
      })
    end,
  },

  -- Easyread - a bionic reading for neovim
  {
    "JellyApple102/easyread.nvim",
    cmd = "EasyreadToggle",
    keys = {
      { "<Leader>te", "<Cmd>EasyreadToggle<CR>", desc = "Toggle Easyread(Bionic Reader)" },
    },
    opts = {
      hlValues = {
        ["1"] = 1,
        ["2"] = 1,
        ["3"] = 2,
        ["4"] = 2,
        ["fallback"] = 0.4,
      },
      hlgroupOptions = { link = "Bold" },
      fileTypes = { "text" },
      saccadeInterval = 0,
      saccadeReset = false,
      updateWhileInsert = true,
    },
  },

  -- Toggle word to another word
  {
    "nguyenvukhang/nvim-toggler",
    keys = {
      {
        "<leader><leader>",
        [[<Cmd>lua require('nvim-toggler').toggle()<CR>]],
        desc = "Toggle Word Under Cursor",
      },
      {
        "<space><space>",
        [[<Cmd>lua require('nvim-toggler').toggle()<CR>]],
        desc = "Toggle Word Under Cursor",
      },
    },
    opts = {
      inverses = {
        ["inc"] = "dec",
        ["increment"] = "decrement",
        ["new"] = "old",
        ["<"] = ">",
        ["=="] = "!=",
      },
      remove_default_keybinds = false,
      remove_default_inverses = false,
    },
  },

  -- Faster escape
  {
    "max397574/better-escape.nvim",
    opts = {
      mapping = { "jk" },
      keys = function()
        return vim.api.nvim_win_get_cursor(0)[2] > 1 and "<esc>l" or "<esc>"
      end,
    },
  },

  -- Smooth scrolling for neovim for version < 0.10.0
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        hide_cursor = false,
        stop_eof = true,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
        easing_function = "sine",
      })
      local t = {}
      t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "350" } }
      t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "350" } }
      t["<PageUp>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "500" } }
      t["<PageDown>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "500" } }
      require("neoscroll.config").set_mappings(t)
    end,
  },

  -- template file
  {
    "glepnir/template.nvim",
    opts = {
      temp_dir = vim.fn.expand(vim.fn.stdpath("config") .. "/template/"),
      author = "Atalariq Barra Hadinugraha",
      email = "atalariq26@gmail.com",
    },
  },
}
