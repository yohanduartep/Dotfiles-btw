return {
	"harpoon",
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>A", function()
			harpoon:list():prepend()
		end)
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		for i = 1, 10 do
			vim.keymap.set("n", "<leader>h" .. i, function()
				harpoon:list():select(i)
			end)
			vim.keymap.set("n", "<leader><C-" .. i .. ">", function()
				harpoon:list():replace_at(i)
			end)
		end
	end,
}
