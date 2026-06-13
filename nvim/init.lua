vim.opt.number = true
vim.opt.expandtab = true
vim.g.mapleader = ' '

-- setup lazy.nvim. I have no idea what this does

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
        { import = "plugins"},
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
})

-- Other keymaps

vim.keymap.set('n', '<leader>S', ':setlocal spell spelllang=en_us<CR>', {desc = 'Enables spell check'})
vim.keymap.set('n', '<leader>s', ':setlocal nospell<CR>', {desc = 'Disables spell check'})
vim.keymap.set('n', '<leader>z', 'z=', {desc = 'list of suggestions'})
vim.keymap.set('n', '<leader>Z', 'zg>', {desc = 'Adds to dictionary'})

vim.cmd.colorscheme("oldworld")

-- Turns on spellcheck automatically for .md and .txt files

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
        pattern = {"*.md", "*.txt"},
        callback = function ()
                vim.opt_local.spell = true
                vim.opt_local.spelllang = "en_us"
        end,
})
