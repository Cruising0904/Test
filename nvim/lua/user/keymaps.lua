local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd "set langmap=ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㄱr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- shortcut for :q
keymap("n", "<A-q>", ":q<CR>", opts)

-- Yank register to y and clipboard
--keymap("n", "yy",'"yy:let @y=@+<cr>', opts)

-- increment
keymap("n", "+", "<C-a>", opts)
keymap("n", "-", "<C-x>", opts)

-- g- to move end of line
keymap("n", "g-", "g_", opts)

-- select all with C-a
keymap("n", "<C-a>", "ggVG", opts)

-- save and source file
keymap("n", "<C-s>", ":w | so %<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==g,", opts)
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==g,", opts)
keymap("n", "<A-d>", "<Esc>:bd<CR>:bnext<CR>", opts)

-- TAB --
-- Create tab with name
keymap("n", "t5", ":tabedit ", opts)

-- Tab number 
--keymap("n", "<A-1>", "1gt", opts)
--keymap("n", "<A-2>", "2gt", opts)
--keymap("n", "<A-3>", "3gt", opts)
--keymap("n", "<A-4>", "4gt", opts)
--keymap("n", "<A-5>", "5gt", opts)
--keymap("n", "<A-6>", "6gt", opts)
--keymap("n", "<A-7>", "7gt", opts)
--keymap("n", "<A-8>", "8gt", opts)
--keymap("n", "<A-9>", "9gt", opts)
--keymap("n", "<A-0>", "0gt", opts)

-- Current pane to new tab
keymap("n", "<leader>t", "<C-w>T", opts)

-- Telescope
-- Telescope builtin
keymap("n", "\\\\", "<cmd>Telescope<cr>", opts)
-- Telescope live grep
keymap("n", "\\f", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
-- Telescope find files
keymap("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
-- Telescope find keymappings 
keymap("n", "\\k", "<cmd>lua require('telescope.builtin').keymaps()<cr>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)

-- Press ctrl + k to remove line like bash
keymap("i", "<C-k>", "<ESC>lDa", opts)
keymap("i", "<A-f>", "<ESC>ea", opts)
keymap("i", "<A-b>", "<ESC>bi", opts)

-- ctrl + enter to insert a new line not possible to map enter with
--keymap("i", "<C-CR>", "<ESC>", opts)
--keymap("i", "<S-ENTER>", "<ESC>O", opts)

-- Snips --
-- my email
keymap("i", "_email", "cucrn35@gmail.com",opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- yank to y register and clipboard
keymap("v", "y", '"yygvygv', opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
--keymap("v", "p", '"_dP', opts)

-- Increment
keymap("v", "+", "<C-a>gv", opts)
keymap("v", "-", "<C-x>gv", opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- yank to y register and clipboard
keymap("x", "y", '"yygvygv', opts)

-- Increment
keymap("x", "+", "<C-a>gv", opts)
keymap("v", "-", "<C-x>gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Nvimtree
--keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
