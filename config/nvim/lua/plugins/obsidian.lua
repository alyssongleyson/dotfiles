return {
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
}
