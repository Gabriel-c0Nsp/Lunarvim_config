-- comandos que eu pego da internet e colo aqui


-- Remapear jk para Esc
-- vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })

local keymap = vim.keymap

-- do not yank text deleted with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
-- keymap.set('n', '+', '<C-k>')
-- keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
-- keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
-- keymap.set('n', 'nt', ':tabedit')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'vs', ':vsplit<Return><C-w>w')

-- Move window
-- keymap.set('n', '<Space>', '<C-w>w')
-- keymap.set('', 'sh', '<C-w>h')
-- keymap.set('', 'sk', '<C-w>k')
-- keymap.set('', 'sj', '<C-w>j')
-- keymap.set('', 'sl', '<C-w>l')

-- Resize window
-- keymap.set('n', '<C-w><left>', '<C-w><')
-- keymap.set('n', '<C-w><right>', '<C-w>>')
-- keymap.set('n', '<C-w><up>', '<C-w>+')
-- keymap.set('n', '<C-w><down>', '<C-w>-')


local opts = { noremap = true, silent = true }

local term_opts = { silent = true}

-- shorten funciton name 
keymap = vim.api.nvim_set_keymap
--
-- Stay text indent mode
keymap("v", "H", "<gv", opts)
keymap("v", "L", ">gv", opts)

-- move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-3<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-3<CR>gv-gv", opts)

