-- Ensure lazy.nvim package manager is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Initialize lazy.nvim with an empty plugin list
require("lazy").setup({})

-- General editor options
vim.opt.number = true         -- Displays line numbers on the left gutter
vim.opt.termguicolors = true  -- Enables 24-bit RGB color support in the TUI
vim.opt.conceallevel = 2      -- Hides markup elements (e.g., Markdown) for a clean UI
