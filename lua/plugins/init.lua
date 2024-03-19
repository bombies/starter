return {
	-- {
	--   "nvimtools/none-ls.nvim",
	--   event = "VeryLazy",
	--   opts = function()
	--     return require "configs.null-ls"
	--   end,
	-- },
	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = {
				enable = true,
				ignore = false,
				timeout = 500,
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"typescript-language-server",
				"tailwindcss-language-server",
				"json-lsp",
				"html-lsp",
				"prettierd",
				"stylua",
				"isort",
				"black",
				"eslint-lsp",
				"python-lsp-server",
				"jdtls",
				"google-java-format",
				"prisma-language-server",
			},
		},
	},
	{
		"windwp/nvim-ts-autotag",
		ft = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
		},
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				-- defaults
				"vim",
				"lua",
				"vimdoc",

				-- web dev
				"html",
				"css",
				"scss",
				"javascript",
				"typescript",
				"tsx",

				-- other
				"python",
				"prisma",

				-- low level
				"c",
			},
		},
	},
	{
		"roobert/tailwindcss-colorizer-cmp.nvim",
		lazy = false,
		config = function()
			require("tailwindcss-colorizer-cmp").setup({})
			require("configs.tailwindcss-colorizer-cmp")
		end,
	},
	{
		"olimorris/persisted.nvim",
		lazy = false,
		config = function()
			require("persisted").setup()
			require("configs.persistence")
		end,
	},
	{
		"github/copilot.vim",
		lazy = false,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("refactoring").setup()
			require("configs.refactor")
		end,
	},
	{
		"smjonas/inc-rename.nvim",
		lazy = false,
		config = function()
			require("inc_rename").setup()
			require("configs.inc-renamer")
		end,
	},
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },
}
