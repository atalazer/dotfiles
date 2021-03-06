require("gitsigns").setup({
    signs = {
        add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
        change = { hl = "GitSignsChange", text = "│", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
        delete = { hl = "GitSignsDelete", text = "_", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
        topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
        changedelete = { hl = "GitSignsChange", text = "~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    },
    keymaps = {
        noremap = true,
        buffer = true,
        ["n ]c"] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'" },
        ["n [c"] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'" },

        ["n ;s"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
        ["n ;u"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
        ["n ;r"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
        ["n ;R"] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
        ["n ;p"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
        ["n ;l"] = '<cmd>lua require"gitsigns".blame_line()<CR>',

        ["o ih"] = ':<C-U>lua require"gitsigns".text_object()<CR>',
        ["x ih"] = ':<C-U>lua require"gitsigns".text_object()<CR>',
    },
    watch_index = {
        interval = 1000,
    },
    preview_config = {
        border = Util.borders,
    },
    current_line_blame = false,
    sign_priority = 5,
    update_debounce = 500,
    status_formatter = nil, -- Use default
    use_decoration_api = true,
    use_internal_diff = true,
})
