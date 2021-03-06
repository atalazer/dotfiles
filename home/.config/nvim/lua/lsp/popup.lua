require("lspsaga").init_lsp_saga({
    border_style = "round", -- "single" "double" "round" "plus"
    max_preview_lines = 12,
    definition_preview_icon = "  ",
    rename_prompt_prefix = "➤  ",
    dianostic_header_icon = "  ",
    code_action_icon = "  ",
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",

    use_saga_diagnostic_sign = true,
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",

    code_action_prompt = {
        enable = false,
        sign = true,
        sign_priority = 20,
        virtual_text = false,
    },

    code_action_keys = {
        quit = "q",
        exec = "<CR>",
    },

    finder_action_keys = {
        open = "<CR>",
        quit = { "q", "qq", "<C-c>", "<ESC>" },
        vsplit = "v",
        split = "s",
        scroll_up = "<C-Up>",
        scroll_down = "<C-Down>",
    },

    rename_action_keys = {
        quit = { "q", "qq", "<C-c>", "<ESC>" },
        exec = "<CR>",
    },

    server_filetype_map = {},
})

require("lspkind").init({
    with_text = true,
    preset = "codicons",
    -- symbol_map = {
        -- Text = "",
        -- Method = "",
        -- Function = "ƒ",
        -- Constructor = "",
        -- Variable = "",
        -- Class = "",
        -- Interface = "ﰮ",
        -- Module = "",
        -- Property = "",
        -- Unit = "",
        -- Value = "",
        -- Enum = "了",
        -- Keyword = "",
        -- Snippet = "﬌",
        -- Color = "",
        -- File = " ",
        -- Folder = "",
        -- EnumMember = "",
        -- Constant = "",
        -- Struct = "",
    -- },
})
