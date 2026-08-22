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

-- General editor options
vim.opt.number = true         -- Displays line numbers on the left gutter
vim.opt.termguicolors = true  -- Enables 24-bit RGB color support in the TUI
vim.opt.conceallevel = 2      -- Hides markup elements (e.g., Markdown) for a clean UI

-- Plugins configuration
require("lazy").setup({
  -- Treesitter parser for Abstract Syntax Tree (AST) analysis
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "markdown", "markdown_inline" },
      highlight = { enable = true },
    },
  },

  -- Visual renderer for Markdown blocks and elements in the buffer
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
    opts = {},
  },

  -- Telescope fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Obsidian integration for note-taking
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "nvim.notes",
          path = "~/mdnotes",
        },
      },
      daily_notes = {
        folder = "log",
        date_format = "%Y-%m-%d",
      },
    },
  },
})
