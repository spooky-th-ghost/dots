print("Key maps loaded")
function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, {noremap = true, silent = true})
end

function nmap(shortcut, command)
	map('n',shortcut, command)
end

function imap(shortcut, command)
	map('i',shortcut, command)
end

vim.g.mapleader = ' '
nmap("<C-Left>",":bp<CR>")
nmap("<C-Right>",":bn<CR>")
nmap("<leader>k","<C-w>k")
nmap("<leader>h","<C-w>h")
nmap("<leader>l","<C-w>l")
nmap("<leader>j","<C-w>j")
