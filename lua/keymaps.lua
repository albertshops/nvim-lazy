local map = vim.keymap.set

map("", "<Space>", "<Nop>")

-- Telescope
map("n", "<Tab>t", ":Telescope<CR>", { desc = "Telescope" })
map("n", "<Tab>b", ":Telescope buffers<CR>", { desc = "Telescope buffers" })
map("n", "<Tab>f", ":Telescope find_files<CR>", { desc = "Telescope find file" })
map("n", "<Tab>s", ":Telescope live_grep<CR>", { desc = "Telescope search string" })
map("n", "<Tab>n", ":Telescope file_browser path=%:p:h<CR>", { desc = "Telescope file browser" })

-- LSP
map("n", "K", ":lua vim.lsp.buf.hover()<CR>", { desc = "Hover" })
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
map("n", "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code action" })

-- toggle comments
map("n", "<leader>c", ":lua require('Comment.api').toggle.linewise.current()<CR>", { desc = "Toggle comment" })
map("v", "<leader>c", function()
	local api = require("Comment.api")
	local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
	vim.api.nvim_feedkeys(esc, "nx", false)
	api.toggle.linewise(vim.fn.visualmode())
end, { desc = "Toggle comment" })

-- misc
map("n", "<leader>g", ":LazyGit<CR>", { desc = "LazyGit" })
map("n", "<leader>o", ":Oil<CR>", { desc = "Oil" })

map("n", "<leader>y", '"+y', { desc = "Yank to clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })

map("v", "<", "<gv", { desc = "Indent" })
map("v", ">", ">gv", { desc = "Indent" })

map("v", "J", ":move '>+1<CR>gv=gv", { desc = "Move down" })
map("v", "K", ":move '<-2<CR>gv=gv", { desc = "Move up" })
