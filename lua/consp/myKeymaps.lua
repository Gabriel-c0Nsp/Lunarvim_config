local opts = { noremap = true, silent = true }
local term_opts = { silent = true}

-- shorten funciton name 
keymap = vim.api.nvim_set_keymap

-- abrir terminal
lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm<CR>"

-- apagar uma palavra inteira no insert mode
keymap("i", "df", "<Esc>ciw", opts)
-- apagar uma palavra inteira no normal mode e depois entrar no insert mode
keymap("n", "df", "ciw", opts)

-- apagar palavra mais fácil sem precisar sair do normal mode
keymap("n", "<Bs>", "diw", opts)

-- dar tab no normal mode
keymap("n", "<Tab>", "I<Space><Space><Esc>", opts)

-- zero agora vai para o começo do texto, não da linha
keymap("n", "0", "^", opts)
-- zero agora vai para o começo do texto, não da linha no visual moode
keymap("v", "0", "^", opts)
-- 1 vai para o final da linha (no lugar do $)
keymap("n", "1", "$", opts)
-- 1 vai para o final da linha (no lugar do $) no visual mode
keymap("v", "1", "$", opts)

-- enter além de descer a tela também cria linha nova se preciso 
keymap("n", "<CR>", "o<Esc>", opts)

-- shotcut para o plugin vim be good
keymap("c", "vbg", "<Esc>nt:VimBeGood<CR>", { noremap = false, silent = false } )

-- remapear leader do emmet-vim
vim.cmd [[let g:user_emmet_leader_key='.']]

-- persistence plugin
-- restore the session for the current directory
vim.api.nvim_set_keymap("c", "rs", [[<cmd>lua require("persistence").load()<cr>]], {})
-- restore the last session
vim.api.nvim_set_keymap("c", ";", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})
-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("c", "sair", [[<cmd>lua require("persistence").stop()<cr>]], {})
-- lv-config.lua

-- configura plugin Alpha para abrir a última sessão usando 'u' (e plugin persistence)
lvim.builtin.which_key.mappings["u"] = { "<cmd>lua require('persistence').load({ last = true })<CR>", "Load Last Session" }

-- Função para incrementar o número abaixo do cursor
function IncrementNumber()
    local current_line = vim.api.nvim_get_current_line()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local num_str = current_line:match("%d+", col)
    
    if num_str then
        local number = tonumber(num_str)
        local new_number = number + 1
        local new_line = current_line:gsub(tostring(number), tostring(new_number), 1)
        vim.api.nvim_buf_set_lines(0, row-1, row, false, {new_line})
    end
end

-- Função para decrementar o número abaixo do cursor
function DecrementNumber()
    local current_line = vim.api.nvim_get_current_line()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local num_str = current_line:match("%d+", col)
    
    if num_str then
        local number = tonumber(num_str)
        local new_number = number - 1
        local new_line = current_line:gsub(tostring(number), tostring(new_number), 1)
        vim.api.nvim_buf_set_lines(0, row-1, row, false, {new_line})
    end
end

-- + para incrementar número abaixo do cursor
keymap('n', '+', ':lua IncrementNumber()<CR>', opts)

-- _ para decrementar número abaixo do cursor
keymap('n', '_', ':lua DecrementNumber()<CR>', opts)
