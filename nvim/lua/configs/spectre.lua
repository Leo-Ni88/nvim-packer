local spectre = require("spectre")

-- Replace
spectre.setup({
    mapping = {
        ["toggle_line"] = {
            map = "dd",
            cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
            desc = "toggle current item",
        },
        ["enter_file"] = {
            map = "<cr>",
            cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
            desc = "goto current file",
        },
        ["send_to_qf"] = {
            map = "<leader>sq",
            cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
            desc = "send all item to quickfix",
        },
        ["replace_cmd"] = {
            map = "<leader>sc",
            cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
            desc = "input replace vim command",
        },
        ["show_option_menu"] = {
            map = "<leader>so",
            cmd = "<cmd>lua require('spectre').show_options()<CR>",
            desc = "show option",
        },
        ["run_replace"] = {
            map = "<leader>sr",
            cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
            desc = "replace all",
        },
        ["change_view_mode"] = {
            map = "<leader>sv",
            cmd = "<cmd>lua require('spectre').change_view()<CR>",
            desc = "change result view mode",
        },
        ["toggle_live_update"] = {
            map = "tu",
            cmd = "<cmd>lua require('spectre').toggle_live_update()<CR>",
            desc = "update change when vim write file.",
        },
        ["toggle_ignore_case"] = {
            map = "ti",
            cmd = "<cmd>lua require('spectre').change_options('ignore-case')<CR>",
            desc = "toggle ignore case",
        },
        ["toggle_ignore_hidden"] = {
            map = "th",
            cmd = "<cmd>lua require('spectre').change_options('hidden')<CR>",
            desc = "toggle search hidden",
        },
        -- you can put your mapping here it only use normal mode
    },
    find_engine = {
        -- rg is map with finder_cmd
        ["rg"] = {
            cmd = "rg",
            -- default args
            args = {
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--no-ignore",
            },
            options = {
                ["ignore-case"] = {
                    value = "--ignore-case",
                    icon = "[I]",
                    desc = "ignore case",
                },
                ["hidden"] = {
                    value = {
                        "--hidden",
                    },
                    desc = "hidden file",
                    icon = "[H]",
                },
                -- you can put any rg search option you want here it can toggle with
                -- show_option function
            },
            default = {
                find = {
                    --pick one of item in find_engine
                    cmd = "rg",
                    options = { "hidden" },
                },
            },
        },
    },
})
