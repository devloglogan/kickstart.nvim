local M = {}

M.on_attach = function(client, bufnr)
  local keymap = vim.keymap.set
  local opts = {
    noremap = true, -- Prevent non-recursive mapping
    silent = true, -- Don't print the command to the CLI
    buffer = bufnr, -- Restrict the keymap to the local buffer number
  }

  -- TODO: Update these keybinds, some feel off, some maybe can be deleted
	-- native neovim keymaps
	keymap("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- goto definition
	keymap("n", "<leader>gD", "<cmd>Lspsaga goto_definition<CR>", opts) -- goto definition
	keymap("n", "<leader>gS", "<cmd>vsplit | Lspsaga goto_definition<CR>", opts) -- goto definition in split
	keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- Code actions
	keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- Rename symbol
	keymap("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- Line diagnostics (float)
	keymap("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- Cursor diagnostics
	keymap("n", "<leader>pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- previous diagnostic
	keymap("n", "<leader>nd", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- next diagnostic
	keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- hover documentation

	-- TODO: Turn into Mini Pick keymaps
	-- fzf-lua keymaps
	-- keymap("n", "<leader>fd", "<cmd>FzfLua lsp_finder<CR>", opts) -- LSP Finder (definition + references)
	-- keymap("n", "<leader>fr", "<cmd>FzfLua lsp_references<CR>", opts) -- Show all references to the symbol under the cursor
	-- keymap("n", "<leader>ft", "<cmd>FzfLua lsp_typedefs<CR>", opts) -- Jump to the type definition of the symbol under the cursor
	-- keymap("n", "<leader>fs", "<cmd>FzfLua lsp_document_symbols<CR>", opts) -- List all symbols (functions, classes, etc.) in the current file
	-- keymap("n", "<leader>fs", "<cmd>FzfLua lsp_workspace_symbols<CR>", opts) -- Search for any symbol across the entire project/workspace
	-- keymap("n", "<leader>fi", "<cmd>FzfLua lsp_implementations<CR>", opts) -- Go to implementation
end

return M
