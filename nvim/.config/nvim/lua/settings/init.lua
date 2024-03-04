local cmd = vim.cmd
local g   = vim.g     -- global variables
local set = vim.opt   -- acts like the :set command in vimscript; set global, window and buffer settings
local o   = vim.o     -- general settings
local wo  = vim.wo    -- window-scoped options
local bo  = vim.bo    -- buffer-scoped options
local fn  = vim.fn

-- Map leader to space
g.mapleader                   = ' '
g.maplocalleader              = ','
-- g.UltiSnipsSnippetDirectories = "[$HOME.'/.config/nvim/UltiSnips']"
g.tagbar_ctags_bin            = 'ctags'

-- Clipboard integration; also install xclip: `xbps-install xclip`
cmd 'set clipboard+=unnamedplus'

cmd([[
  augroup purescript_fold
    autocmd!
    autocmd Filetype purescript setlocal foldmethod=syntax
  augroup end
]])

-- automatic compile when packer file changes
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost lua/configs/packer/init.lua source <afile> | PackerCompile
  augroup end
]])

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'colorscheme gruvbox'
cmd [[match errorMsg /\s\+$/]]  -- show trailing whitespace
cmd [[autocmd FileType haskell,purescript,agda,ocaml,erlang,go,antlr4,markdown,dart autocmd BufWritePre <buffer> %s/\s\+$//e]] -- remove trailing whitespace when saving
cmd [[autocmd FileType yaml autocmd BufWritePost <buffer> silent !yamlfix <afile>]] -- autoformat YAML files on save

set.completeopt    = 'menu,menuone,noselect'
set.signcolumn     = 'yes'
set.hidden         = true
set.breakindent    = true
set.number         = true
set.relativenumber = true
set.cursorline     = true
set.wrap           = false
set.shiftwidth     = 2     -- set shift width to 4 spaces.
set.tabstop        = 2     -- set tab width to 4 columns.
set.expandtab      = true  -- Use space characters instead of tabs.
set.scrolloff      = 8     -- Do not let cursor scroll below or above N number of lines when scrolling.
set.scroll         = 4
set.incsearch      = true  -- While searching though a file incrementally highlight matching characters as you type.
set.ignorecase     = true  -- Ignore capital letters during search.
set.smartcase      = true  -- Override the ignorecase option if searching for capital letters.
set.showcmd        = true  -- Show partial command you type in the last line of the screen.= true
set.showmode       = true  -- Show the mode you are on the last line.
set.showmatch      = true  -- Show matching words during a search.
set.hlsearch       = true  -- Use highlighting when doing a search.
set.history        = 1000  -- Set the commands to save in history default number is 20.
set.updatetime     = 100
set.undofile       = true
set.undodir        = "/home/schmidh/Dropbox/nvim/undo/"
