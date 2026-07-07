return {
	"stevearc/conform.nvim",

	config = function()
		require("conform").setup({
			-- formats the given languages
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				markdown = { "mdformat" },
				cpp = { "clang-format" },
				html = { "js-beautify" },
				css = { "js-beautify" },
                                json = {"js-beautify"},
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({
				async = true,
				lsp_format = "fallback",
			})
		end, { desc = "Format selected lines" })
	end,
}
