-- General
vim.o.termguicolors      = false         -- Ruins colorscheme
vim.o.number             = true          -- Show line numbers
vim.o.clipboard          = 'unnamedplus' -- Copy to system clipboard
vim.o.shiftwidth         = 4             -- Indentation
vim.o.tabstop            = 4             -- Indentation
vim.o.swapfile           = false         -- No swapfile
vim.g.is_posix           = 1             -- Correct shell syntax highlight
vim.g.loaded_netrw       = 1             -- Disable netrw
vim.g.loaded_netrwPlugin = 1             -- Disable netrw
vim.cmd 'colorscheme vim'                -- Set colorscheme

-- Show invisible chars
vim.opt.list      = true
vim.opt.listchars = { trail = '·', tab = '+ ' }

-- Packages
require 'paq' {
	'https://github.com/savq/paq-nvim'           ,
	'https://github.com/numToStr/Comment.nvim'   ,
	'https://github.com/ap/vim-css-color'        ,
	'https://github.com/nvim-tree/nvim-tree.lua' ,
}
require 'Comment'.setup {}
require 'nvim-tree'.setup {
	view = {
		width = 25,
	},
	git = {
		enable = false,
	},
	renderer = {
		icons = {
			show = {
				file         = false,
				folder       = false,
				folder_arrow = false,
			},
			glyphs = {
				symlink = '',
			},
		},
	},
}

-- Mappings
-- Save and exit
vim.keymap.set('n', '<A-s>', '<Esc>:w<CR>')
vim.keymap.set('i', '<A-s>', '<Esc>:w<CR>')
vim.keymap.set('v', '<A-s>', '<Esc>:w<CR>')
vim.keymap.set('n', '<A-q>', '<Esc>:q<CR>')
vim.keymap.set('i', '<A-q>', '<Esc>:q<CR>')
vim.keymap.set('v', '<A-q>', '<Esc>:q<CR>')

-- Open / close file tree
vim.keymap.set('n', '<A-n>', '<Esc>:NvimTreeToggle<CR>')
vim.keymap.set('i', '<A-n>', '<Esc>:NvimTreeToggle<CR>')
vim.keymap.set('v', '<A-n>', '<Esc>:NvimTreeToggle<CR>')

-- Delete before cursor in normal mode
vim.keymap.set('n', '<BS>', '<Esc>dh')

-- Insert new line, space, tab
vim.keymap.set('n', '<CR>',    'i<CR><Esc>')
vim.keymap.set('n', '<Space>', 'i <Esc>l')
vim.keymap.set('n', '<Tab>',   'i<Tab><Esc>l')
vim.keymap.set('v', '<Tab>',   '>')

-- Duplicate line/block, use z register
vim.keymap.set('n', '<A-d>', '<Esc>"zY"zp')
vim.keymap.set('i', '<A-d>', '<Esc>"zY"zp')
vim.keymap.set('v', '<A-d>', '"zY<Esc>"zP')

-- Cut, use y register
vim.keymap.set('n', '<A-x>', '<Esc>"ydd')
vim.keymap.set('i', '<A-x>', '<Esc>"ydd')
vim.keymap.set('v', '<A-x>', '"yd')
vim.keymap.set('n', '<A-v>', '<Esc>"yp')
vim.keymap.set('i', '<A-v>', '<Esc>"yp')
vim.keymap.set('v', '<A-v>', '"yP')

-- Do not overwrite clipboard
vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('n', 'x', '"_x')

-- Comment / uncomment, requires plugin - Comment
vim.keymap.set('n', '<A-e>', '<Esc>gcc', { remap = true })
vim.keymap.set('i', '<A-e>', '<Esc>gcc', { remap = true })
vim.keymap.set('v', '<A-e>', 'gc',       { remap = true })
