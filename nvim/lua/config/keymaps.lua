-------------------- DISABLE KEYMAPS --------------------keyma

vim.keymap.set("n", "<up>", ':echo "Deez nuts"<CR>', { silent = true })
vim.keymap.set("n", "<down>", ':echo "Deez nuts"<CR>', { silent = true })
vim.keymap.set("n", "<left>", ':echo "Deez nuts"<CR>', { silent = true })
vim.keymap.set("n", "<right>", ':echo "Deez nuts"<CR>', { silent = true })

-------------------- WORKBENCH KEYMAPS --------------------

-- split buffers
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { silent = true })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { silent = true })

-- Toggle netrw
vim.keymap.set("n", "<leader>e", function()
	local filetype = vim.bo.filetype

	if filetype == "netrw" then
		vim.cmd(":b#")
	else
		vim.cmd("Ex")
	end
end, { silent = true })

-- Oil.nvim
vim.keymap.set("n", "<leader>o", ":Oil<CR>", { silent = true })

-- Auto session keymaps
vim.keymap.set("n", "<leader>wr", ":AutoSession restore<CR>", { silent = true })
vim.keymap.set("n", "<leader>ws", ":AutoSession save<CR>", { silent = true })

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { silent = true })
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { silent = true })
vim.keymap.set("n", "<Leader>hh", ":Telescope highlights<CR>", { silent = true })
vim.keymap.set("n", "<Leader>fc", function()
	require("telescope.builtin").colorscheme({ enable_preview = true })
end, { silent = true })

-- Molten.nvim keymap
vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true })
vim.keymap.set("n", "<leader>ms", ":MoltenDeinit<CR>", { silent = true })
vim.keymap.set("n", "<leader>mr", ":MoltenRestart<CR>", { silent = true })
vim.keymap.set("n", "<leader>me", function()
	vim.cmd("MoltenEvaluateOperator")
	vim.api.nvim_feedkeys("iC", "o", true)
end, { silent = true })

-- 1. Execute code then move to next codeblock
vim.keymap.set("n", "<leader>mn", function()
	vim.cmd("MoltenEvaluateOperator")
	vim.api.nvim_feedkeys("iC", "o", true)
	vim.schedule(function()
		require("myplugins.markdown_tools").next_codeblock()
	end)
end)

-- Iron.nvim keymap
-- 1. Send the code within the codeblock from the cursor location
vim.keymap.set("n", "<leader>sc", require("myplugins.markdown_tools").send_code)

-- 2. Move to next codeblock
vim.keymap.set("n", "<leader>nc", require("myplugins.markdown_tools").next_codeblock)

-- 3. Send code & move to next codeblock
vim.keymap.set("n", "<leader>sn", function()
	require("myplugins.markdown_tools").send_code()
	require("myplugins.markdown_tools").next_codeblock()
end)

-- Remove openning pop ups
vim.keymap.set("n", "<leader><leader>", "<cmd>NoiceDismiss<CR>", { silent = true })

-------------------- LIFE/WORK MANAGEMENT KEYMAPS --------------------

-------------------- CODING KEYMAPS --------------------

-- Go to start & end of line
vim.keymap.set({ "n", "v" }, "fh", "^", { silent = true })
vim.keymap.set({ "n", "v" }, "fl", "$", { silent = true })

-- Copy to clipboard
vim.keymap.set("v", "<leader>y", '"+y', { silent = true })
vim.keymap.set("n", "<leader>yy", '"+yy', { silent = true })

-- Turn of search highlight
vim.keymap.set("n", "<leader>th", ":nohlsearch<CR>", { silent = true })
