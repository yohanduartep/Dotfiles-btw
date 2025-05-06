return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            auto_install = true,
            sync_install = false,
            autotag = {
                enable = true,
            },
            ensure_installed = {
                "bash", "c", "css", "gdscript", "html", "java", "javascript", "jsdoc",
                "lua", "markdown", "markdown_inline", "python", "rust", "typescript",
                "vim", "vimdoc",
            },
            highlight = {
                enable = true,
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                  init_selection = "<C-space>",
                  node_incremental = "<C-space>",
                  scope_incremental = false,
                  node_decremental = "<bs>",
                },
            },
            indent = {
                enable = true
            },
        })
    end
}

