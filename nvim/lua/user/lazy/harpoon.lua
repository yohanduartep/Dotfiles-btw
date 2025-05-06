return{
        "harpoon",
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>A", function() harpoon:list():prepend() end)
            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end)
            vim.keymap.set("n", "<leader>h6", function() harpoon:list():select(6) end)
            vim.keymap.set("n", "<leader>h7", function() harpoon:list():select(7) end)
            vim.keymap.set("n", "<leader>h8", function() harpoon:list():select(8) end)
            vim.keymap.set("n", "<leader><C-1>", function() harpoon:list():replace_at(1) end)
            vim.keymap.set("n", "<leader><C-2>", function() harpoon:list():replace_at(2) end)
            vim.keymap.set("n", "<leader><C-3>", function() harpoon:list():replace_at(3) end)
            vim.keymap.set("n", "<leader><C-4>", function() harpoon:list():replace_at(4) end)
        end
}
