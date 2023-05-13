vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		'catppuccin/nvim',
		as = 'catppuccin',
	})
	use 'kataklasm/forest-nord-vim'
	use 'kataklasm/arctic-nord.nvim'
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		dark_variant = 'moon'
	})
	use 'ellisonleao/gruvbox.nvim'
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'lervag/vimtex'
	use 'SirVer/ultisnips'
	use 'ggandor/leap.nvim'
	use 'airblade/vim-gitgutter'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-commentary'
	use 'lambdalisue/suda.vim'
	use {
		"jghauser/kitty-runner.nvim",
		config = function()
			require("kitty-runner").setup()
		end
	}
	use {
		'goolord/alpha-nvim',
		requires = { 'nvim-tree/nvim-web-devicons' },
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end
	}
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			"quangnguyen30192/cmp-nvim-ultisnips",
			config = function()
				require("cmp_nvim_ultisnips").setup{}
			end
		},
	} 
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'hrsh7th/cmp-omni'},
		}
	}
	use 'Pocco81/auto-save.nvim'
	-- use({
	-- 	"jghauser/papis.nvim",
	-- 	after = { "telescope.nvim", "nvim-cmp" },
	-- 	requires = {
	-- 		"kkharji/sqlite.lua",
	-- 		"nvim-lua/plenary.nvim",
	-- 		"MunifTanjim/nui.nvim",
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 	},
	-- 	rocks = {{"lyaml"}},
	-- 	config = function()
	-- 	end,
	-- })
	use 'theprimeagen/harpoon'
	use 'rcarriga/nvim-notify'
	use({
		"Pocco81/true-zen.nvim",
		config = function()
			require("true-zen").setup {
			}
		end,
	})
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'kdheepak/cmp-latex-symbols'
	use 'j-hui/fidget.nvim'
	use 'lewis6991/impatient.nvim'
	use 'folke/todo-comments.nvim'
	use {'kevinhwang91/nvim-bqf', ft = 'qf'}
	use {
		'junegunn/fzf', run = function()
			vim.fn['fzf#install']()
		end
	}

	-- always last
	use 'jooize/vim-colemak'
end)
