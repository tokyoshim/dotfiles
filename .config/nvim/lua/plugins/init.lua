vim.pack.add({
	--library
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	--plugins
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
    --color schemes
    { src = "https://github.com/catppuccin/nvim"},
    { src = "https://github.com/folke/tokyonight.nvim" },
})
vim.filetype.add({
	extension = {
		vsh = 'glsl',
		fsh = 'glsl'
	}
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { 'c', 'cpp' },
	callback = function() vim.bo.cinkeys = vim.bo.cinkeys:gsub(',:', '') end
})
vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = function()
		require('plugins.treesitter')
		require('plugins.telescope')
		require('plugins.colors')
	end,
})
