local bufferline = require('bufferline')
bufferline.setup({
	options = {
		separator_style = 'slant',
		show_buffer_close_icons =  false,
		diagnostics = 'nvim_lsp'
	},
})
