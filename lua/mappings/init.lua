local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Space as leader key
vim.g.mapleader = ' '

-- Add telescope's keymaps
map('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
map('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], opts)
map('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], opts)
map('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], opts)
map('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], opts)
map('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], opts)
map('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
map('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], opts)
map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)

-- Visual Mode
-- Stay in indent mode
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Move Text up and down
map('v', '<A-j>', ':m .+1<CR>==', opts)
map('v', '<A-k>', ':m .-1<CR>==', opts)


-- Visual Block
-- Move text up and down
map('x', 'J', ":move '>+1<CR>gv-gv'", opts)
map('x', 'K', ":move '<-2<CR>gv-gv'", opts)
map('x', '<A-j>', ":move '>+1<CR>gv-gv'", opts)
map('x', '<A-k>', ":move '<-2<CR>gv-gv'", opts)
