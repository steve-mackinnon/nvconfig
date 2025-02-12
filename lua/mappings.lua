require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>tt", ":Trouble diagnostics toggle<cr>")
map("n", "<leader>gg", function()
  local current_path = vim.fn.expand "%:p:h"
  local command = "a" -- go into terminal mode
    .. "cd "
    .. current_path
    .. "<CR>"
    .. "lazygit<CR>" -- run tig
  command = vim.api.nvim_replace_termcodes(command, true, false, true)
  require("detour").Detour()
  vim.cmd.terminal() -- open a terminal buffer
  vim.bo.bufhidden = "delete" -- close the terminal when window closes
  vim.api.nvim_feedkeys(command, "n", false)
end, { desc = "Launch lazygit" })
map("n", "<leader><tab>", function()
  require("telescope.builtin").buffers { sort_mru = true, ignore_current_buffer = true }
end)
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
