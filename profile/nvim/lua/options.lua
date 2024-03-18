local set = vim.opt
----------------------
-- Backend settings --
----------------------
-- Backup
set.swapfile = false -- Don't use swapfile
vim.cmd([[set nobackup]]) -- creates a backup file
vim.cmd([[set nowritebackup]]) -- creates a backup file i guess
set.undofile = true -- Use undo file
vim.cmd([[set undodir=$XDG_CACHE_HOME/nvim/undodir]])

-- Encoding Format
set.encoding = "utf-8" -- The encoding displayed
set.fileencoding = "utf-8" -- The encoding written to file
set.iskeyword:append("-") -- treat dash separated words as a word text object"

-- Indentation
set.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
set.expandtab = true -- Converts tabs to spaces
set.autoindent = true -- Good auto indent
set.smartindent = true -- Makes indenting smart
set.tabstop = 2 -- Insert 4 spaces for a tab
set.softtabstop = 2 -- Insert spaces while editing tabs
set.shiftwidth = 2 -- Change the number of space characters inserted for indentation

-- Search
set.ignorecase = true -- ignores case when searching
set.smartcase = true -- turns on case sensitive search when letters are capitalized
set.incsearch = true -- sets incremental search
set.hlsearch = false -- disable highlighting of searched keywords

-- Autocomplete
vim.cmd([[set complete+=kspell]]) -- auto complete with spellcheck
vim.cmd([[set completeopt=menuone,longest]]) -- auto complete menu

-- Misc
set.clipboard = "unnamedplus" -- Copy paste between vim and everything else

------------------------
-- Interface Settings --
------------------------
-- Cursor
set.ruler = true -- Show the cursor position all the time
set.virtualedit = "onemore" -- With This option you can move the cursor one character over the end

-- Title Bar
set.title = true -- Show current txt that you editing
set.showtabline = 2 -- Always show file tabs

-- Debug Bar
set.number = true -- Line numbers
set.relativenumber = true -- Vim’s absolute, relative and hybrid line numbers
vim.cmd([[set signcolumn=yes]]) -- Show debug line

-- Status Bar
set.laststatus = 2 -- Always display the status line

-- Window Allocation
set.splitbelow = true -- Horizontal splits will automatically be below
set.splitright = true -- Vertical splits will automatically be to the right

-- Misc
vim.cmd([[set nowrap]]) -- Display long lines as just one line
vim.cmd([[syntax enable]]) -- Enables syntax highlighing
vim.cmd([[set noshowmode]])
set.scrolloff = 8 -- Maintain space at the edges while scrolling
set.cmdheight = 0 -- More space for displaying messages
set.pumheight = 16 -- Makes popup menu smaller
set.termguicolors = true -- set term gui colors

-----------------
-- Memory, CPU --
-----------------
set.hidden = true -- Required to keep multiple buffers open multiple buffers
