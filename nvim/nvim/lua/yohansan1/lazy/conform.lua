return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		local prettier_fts = {
			"javascript",
			"javascriptreact",
			"css",
			"html",
			"json",
			"yaml",
			"markdown",
		}

		local formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
		}

		for _, ft in ipairs(prettier_fts) do
			formatters_by_ft[ft] = { "prettier" }
		end

		conform.setup({
			formatters_by_ft = formatters_by_ft,

			formatters = {
				prettier = {
					prepend_args = { "--tab-width", "4" },
				},
				stylua = {
					prepend_args = { "--indent-width", "4" },
				},
			},

			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
