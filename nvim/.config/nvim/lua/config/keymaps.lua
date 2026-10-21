-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "G", "Gzz")

-- Move current buffer tab left or right
vim.keymap.set("n", "<A-h>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer left" })
vim.keymap.set("n", "<A-l>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer right" })

-- Go UPWARDS (Find parent interfaces)
-- vim.keymap.set("n", "<leader>cu", function()
--   vim.lsp.buf.typehierarchy("supertypes")
-- end, { desc = "Supertypes" })

-- Go DOWNWARDS (Find child interfaces / concrete implementations)
-- vim.keymap.set("n", "<leader>cd", function()
--   vim.lsp.buf.typehierarchy("subtypes")
-- end, { desc = "Subtypes" })

-- vim.keymap.set("n", "<leader>tb", function()
--   require("neotest").run.run({
--     suite = false,
--     extra_args = { "-bench=.", "-benchmem", "-run=^$" },
--   })
-- end, { desc = "Run Go Benchmark" })
