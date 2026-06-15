return {
  -- Umbra is local (lives in `colors/` + `lua/umbra/`), so it needs no plugin spec.
  -- Make it the default colorscheme; Themery's persisted choice wins thereafter.
  { "AstroNvim/astroui", opts = { colorscheme = "umbra" } },

  -- Installed colorschemes available in the picker.
  { "NLKNguyen/papercolor-theme", name = "PaperColor" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "olivercederborg/poimandres.nvim", name = "poimandres" },
  { "ramojus/mellifluous.nvim", name = "mellifluous" },
  { "dgox16/oldworld.nvim", name = "oldworld" },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = false, -- transparency renders black on this terminal; keep solid
      styles = {
        sidebars = "dark",
        floats = "dark",
      },
    },
  },

  -- Theme picker with live preview + on-disk persistence.
  {
    "zaldih/themery.nvim",
    lazy = false, -- must load at startup so the persisted theme is restored
    priority = 1000,
    config = function()
      require("themery").setup {
        themes = {
          { name = "Umbra", colorscheme = "umbra" },
          { name = "Umbra (darker)", colorscheme = "umbra-darker" },
          { name = "Panda", colorscheme = "panda" },
          { name = "Panda (darker)", colorscheme = "panda-darker" },
          { name = "Tokyo Night (Storm)", colorscheme = "tokyonight-storm" },
          { name = "Tokyo Night (Night)", colorscheme = "tokyonight-night" },
          { name = "Tokyo Night (Moon)", colorscheme = "tokyonight-moon" },
          { name = "Catppuccin (Mocha)", colorscheme = "catppuccin-mocha" },
          { name = "Catppuccin (Macchiato)", colorscheme = "catppuccin-macchiato" },
          { name = "Catppuccin (Frappé)", colorscheme = "catppuccin-frappe" },
          { name = "Rosé Pine (Main)", colorscheme = "rose-pine-main" },
          { name = "Rosé Pine (Moon)", colorscheme = "rose-pine-moon" },
          { name = "Poimandres", colorscheme = "poimandres" },
          { name = "Mellifluous", colorscheme = "mellifluous" },
          { name = "Oldworld", colorscheme = "oldworld" },
          { name = "PaperColor", colorscheme = "PaperColor" },
          { name = "Tokyo Night (Day · light)", colorscheme = "tokyonight-day" },
          { name = "Catppuccin (Latte · light)", colorscheme = "catppuccin-latte" },
          { name = "Rosé Pine (Dawn · light)", colorscheme = "rose-pine-dawn" },
        },
        livePreview = true,
      }

      -- First launch (nothing persisted yet): make sure Umbra is showing.
      if not vim.g.colors_name or vim.g.colors_name == "" then vim.cmd.colorscheme "umbra" end

      vim.keymap.set("n", "<Leader>ut", "<cmd>Themery<cr>", { desc = "Theme picker (Themery)" })
    end,
  },
}
