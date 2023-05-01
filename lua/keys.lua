vim.g.mapleader = " "


function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
	options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end	

-- Better nav for omnicomplete
map('i', '<c-j>', '"<C-n>"')
map('i', '<c-k>', '"<C-p>"')

-- Use alt + hjkl to rezise windows
map('n', '<M-j>', ":resize -2<CR>")
map('n', '<M-k>', ":resize +2<CR>")
map('n', '<M-h>', ":vertical resize -2<CR>")
map('n', '<M-l>', ":vertical resize +2<CR>")

-- Tab in general mode will move to next buffer
map('n', '<TAB>', ":bnext<CR>")
-- Shift Tab in general mode will move to previous buffer
map('n', '<S-TAB>', ":bprevious<CR>")

-- keymap.set('i', '<expr><TAB>', 'pumvisible() ? "\<C-n>" : "\<TAB>"')

