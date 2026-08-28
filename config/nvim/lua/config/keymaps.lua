-- Keymaps
local keymap = vim.keymap.set
keymap("n", "<leader>on", ":ObsidianNew ", { desc = "New Note" })
keymap("n", "<leader>os", ":ObsidianSearch ", { desc = "Search text in notes" })
keymap("n", "<leader>oo", ":ObsidianOpen", { desc = "Open in Obsidian" })
keymap("n", "<leader>od", ":ObsidianToday", { desc = "Today's daily note" })
keymap("n", "<leader>ot", ":ObsidianTemplate", { desc = "Insert Template" })
