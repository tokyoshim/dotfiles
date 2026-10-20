require('nvim-treesitter').install { 'lua', 'cpp', 'glsl' }

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'lua', 'cpp', 'glsl' },
    callback = function() vim.treesitter.start() end
})
