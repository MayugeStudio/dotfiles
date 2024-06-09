return {
    { 'nvim-telescope/telescope.nvim', tag='0.1.5', dependencies = 'nvim-lua/plenary.nvim' },
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    { 'lambdalisue/fern.vim' },
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{ "savq/melange-nvim" },
	{ 'blazkowolf/gruber-darker.nvim', opts = { bold = false, italic = { strings = false, comments = false, operators = false, folds = false } } },
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {
        styles = {
            comments = {
                italic = false,
            },
            keywords = {
                italic = false,
            },
        },
        on_colors = function(colors)
            colors.comment = "#cc8c3c"
        end
        },
    }
}
