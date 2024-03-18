local options = {
	lsp_fallback = true,
	formatters = {
		prettierd = {
			prepend_args = {
				"--single-quote",
				"--trailing-comma",
				"--tab-width 4",
			},
		},
	},
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		javascriptreact = { "prettierd" },
		html = { "prettierd" },
		css = { "prettierd" },
		scss = { "prettierd" },
		json = { "prettierd" },
		python = { "isort", "black" },
		c = { "prettierd" },
		java = { "google-java-format" },
	},
	format_on_save = {
		async = false,
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

local conform = require("conform")
conform.setup(options)

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	conform.format({
		async = false,
		timeout_ms = 500,
		lsp_fallback = true,
	})
end, { desc = "Format file or range (in visual mode)" })
