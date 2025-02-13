local map = vim.keymap.set

map("n", "<leader>o", "<cmd>ClangdSwitchSourceHeader<CR>", { desc = "Switch between source and header files" })
