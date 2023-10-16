local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>m", mark.add_file)
vim.keymap.set("n", "<C-m>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-b>", function() ui.nav_prev() end)
vim.keymap.set("n", "<C-f>", function() ui.nav_next() end)

