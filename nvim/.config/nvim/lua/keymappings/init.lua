local utils = require('nvimutils')

-- Telescope
utils.map('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>')
--
-- Move to next and previous buffers.
utils.map('n', '<M-Right>', ':bn<CR>zz')
utils.map('n', '<M-Left>', ':bp<CR>zz')
utils.map('n', '<M-j>', ':bn<CR>zz')
utils.map('n', '<M-k>',  ':bp<CR>zz')

-- reselect pasted text
utils.map('n', 'gp', '`[v`]')

-- Trouble
utils.map('n', '<leader>xx', '<cmd>Trouble<cr>')
utils.map('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>')
utils.map('n', '<leader>xd', '<cmd>Trouble document_diagnostics<cr>')
utils.map('n', '<leader>xl', '<cmd>Trouble loclist<cr>')
utils.map('n', '<leader>xq', '<cmd>Trouble quickfix<cr>')
utils.map('n', 'gR', '<cmd>Trouble lsp_references<cr>')

-- Keep centered
utils.map('n', 'k', 'kzz')
utils.map('n', 'j', 'jzz')
utils.map('n', 'G', 'Gzz')
utils.map('n', 'n', 'nzz')
utils.map('n', 'N', 'Nzz')
vim.cmd [[nmap <C-o> <C-o>zz]]
vim.cmd [[nmap <C-i> <C-i>zz]]

-- Escape easily from insert mode
utils.map('i', 'jk', '<Esc>')

-- Delete current buffer
utils.map('n', '<leader>dd', ':bd<CR>')

-- Remove trailing whitespace
utils.map('n', '<leader>rw', ":%s/\\v\\s+$// | ''<CR>")

-- Activate/deactivate undo tree
utils.map('n', '<F3>', ':UndotreeToggle<CR>')

-- Activate/deactivate tag bar
utils.map('n', '<F8>', ':TagbarToggle<CR>')

-- cd into the directory of current open file
utils.map('n', '<leader>cd', ':cd %:p:h<CR>')

-- show character information under cursor
--nmap ga <Plug>(UnicodeGA)
vim.cmd [[nmap <ga> <Plug>(UnicodeGA)]]

-- Flutter
utils.map('n', '<leader>fa', ':FlutterRun<CR>')
utils.map('n', '<leader>fq', ':FlutterQuit<CR>')
utils.map('n', '<leader>fr', ':FlutterHotReload<CR>')
utils.map('n', '<leader>fR', ':FlutterHotRestart<CR>')
utils.map('n', '<leader>fD', ':FlutterVisualDebug<CR>')

-- Replace with Unicode variants for Haskell/PureScript source code
utils.map('n', '<leader>sh', ':%s/\\s\\+->\\s\\+/ → /ge | %s/\\s\\+<-\\s\\+/ ← /ge | %s/\\s\\+::\\s\\+/ ∷ /ge | %s/\\s\\+=>\\s\\+/ ⇒ /ge | %s/\\s\\+<=\\s\\+/ ⇐ /ge | %s/\\<forall\\>/∀/ge<cr>')
-- utils.map('n', '<leader>sh', ':%s/\\s\\+<=\\s\\+/ ⇐ /ge<cr>')

-- Grammarous
vim.cmd [[nmap <C-j> <Plug>(grammarous-open-info-window)]]
vim.cmd [[nmap <C-n> <Plug>(grammarous-move-to-next-error)]]
vim.cmd [[nmap <C-p> <Plug>(grammarous-move-to-previous-error)]]

utils.map('n', '<C-s>',  ':set spell!<CR>')
utils.map('n', '<Leader>ww',  ':w<CR>')

-- Superscripts and subscripts for letters.
-- Not all letters are available in Unicode.
vim.cmd ("digraphs as " .. 0x2090)
vim.cmd ("digraphs es " .. 0x2091)
vim.cmd ("digraphs hs " .. 0x2095)
vim.cmd ("digraphs is " .. 0x1D62)
vim.cmd ("digraphs js " .. 0x2C7C)
vim.cmd ("digraphs ks " .. 0x2096)
vim.cmd ("digraphs ls " .. 0x2097)
vim.cmd ("digraphs ms " .. 0x2098)
vim.cmd ("digraphs ns " .. 0x2099)
vim.cmd ("digraphs os " .. 0x2092)
vim.cmd ("digraphs ps " .. 0x209A)
vim.cmd ("digraphs rs " .. 0x1D63)
vim.cmd ("digraphs ss " .. 0x209B)
vim.cmd ("digraphs ts " .. 0x209C)
vim.cmd ("digraphs us " .. 0x1D64)
vim.cmd ("digraphs vs " .. 0x1D65)
vim.cmd ("digraphs xs " .. 0x2093)
vim.cmd ("digraphs aS " .. 0x1d43)
vim.cmd ("digraphs bS " .. 0x1d47)
vim.cmd ("digraphs cS " .. 0x1d9c)
vim.cmd ("digraphs dS " .. 0x1d48)
vim.cmd ("digraphs eS " .. 0x1d49)
vim.cmd ("digraphs fS " .. 0x1da0)
vim.cmd ("digraphs gS " .. 0x1d4d)
vim.cmd ("digraphs hS " .. 0x02b0)
vim.cmd ("digraphs iS " .. 0x2071)
vim.cmd ("digraphs jS " .. 0x02b2)
vim.cmd ("digraphs kS " .. 0x1d4f)
vim.cmd ("digraphs lS " .. 0x02e1)
vim.cmd ("digraphs mS " .. 0x1d50)
vim.cmd ("digraphs nS " .. 0x207f)
vim.cmd ("digraphs oS " .. 0x1d52)
vim.cmd ("digraphs pS " .. 0x1d56)
vim.cmd ("digraphs rS " .. 0x02b3)
vim.cmd ("digraphs sS " .. 0x02e2)
vim.cmd ("digraphs tS " .. 0x1d57)
vim.cmd ("digraphs uS " .. 0x1d58)
vim.cmd ("digraphs vS " .. 0x1d5b)
vim.cmd ("digraphs wS " .. 0x02b7)
vim.cmd ("digraphs xS " .. 0x02e3)
vim.cmd ("digraphs yS " .. 0x02b8)
vim.cmd ("digraphs zS " .. 0x1dbb)
vim.cmd ("digraphs AS " .. 0x1D2C)
vim.cmd ("digraphs BS " .. 0x1D2E)
vim.cmd ("digraphs DS " .. 0x1D30)
vim.cmd ("digraphs ES " .. 0x1D31)
vim.cmd ("digraphs GS " .. 0x1D33)
vim.cmd ("digraphs HS " .. 0x1D34)
vim.cmd ("digraphs IS " .. 0x1D35)
vim.cmd ("digraphs JS " .. 0x1D36)
vim.cmd ("digraphs KS " .. 0x1D37)
vim.cmd ("digraphs LS " .. 0x1D38)
vim.cmd ("digraphs MS " .. 0x1D39)
vim.cmd ("digraphs NS " .. 0x1D3A)
vim.cmd ("digraphs OS " .. 0x1D3C)
vim.cmd ("digraphs PS " .. 0x1D3E)
vim.cmd ("digraphs RS " .. 0x1D3F)
vim.cmd ("digraphs TS " .. 0x1D40)
vim.cmd ("digraphs US " .. 0x1D41)
vim.cmd ("digraphs VS " .. 0x2C7D)
vim.cmd ("digraphs WS " .. 0x1D42)
