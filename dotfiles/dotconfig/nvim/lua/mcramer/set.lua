-- COLOR SCHEME
vim.cmd[[ colorscheme nord ]]
	-- fix for alpha dashboard
vim.api.nvim_command([[ autocmd BufWinEnter,FileType * colorscheme nord ]])
vim.api.nvim_command([[ autocmd BufWinEnter,FileType alpha colorscheme gruvbox ]])

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.textwidth = 90

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.spell = false
vim.opt.spelllang = de, en_gb

vim.opt.conceallevel = 2

vim.opt.completeopt = "noselect"

vim.api.nvim_command([[
highlight ExtraWhitespace ctermbg=blue guibg=#BF616A
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
]])

vim.api.nvim_create_autocmd('BufReadPost', {
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

vim.cmd[[
	function! SynStack()
		if !exists("*synstack")
			return
		endif
		echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
	endfunc
]]
