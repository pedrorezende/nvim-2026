local fullscreen_float = {
  border = "curved",
  width = function() return vim.o.columns end,
  height = function() return vim.o.lines end,
  row = 0,
  col = 0,
  winblend = 20,
}

local last_term_id = 1

local function toggle_term(id, opts)
  local Terminal = require("toggleterm.terminal").Terminal
  local term = require("toggleterm.terminal").get(id)
  if not term then
    term = Terminal:new(vim.tbl_extend("force", {
      id = id,
      direction = "float",
      float_opts = fullscreen_float,
    }, opts or {}))
  end
  last_term_id = id
  term:toggle()
end

-- Generate <Leader>(1-9)t keybindings for numbered terminals
local numbered_keys = {}
for i = 1, 9 do
  numbered_keys[#numbered_keys + 1] = {
    "<Leader>" .. i .. "t",
    function() toggle_term(10 + i) end,
    desc = "Terminal: #" .. i,
  }
end

return {
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = { "ToggleTerm" },
    keys = vim.list_extend({
      {
        "<C-\\>",
        function() toggle_term(last_term_id) end,
        mode = { "n", "t" },
        desc = "Terminal: Toggle last",
      },
      {
        "<A-d>",
        function() toggle_term(2, { lose_on_exit = false }) end,
        mode = { "n", "t" },
        desc = "Terminal: dev server",
      },
      {
        "<A-c>",
        function() toggle_term(3, { cmd = "claude", close_on_exit = false }) end,
        mode = { "n", "t" },
        desc = "Terminal: Claude",
      },
      {
        "<A-g>",
        function() toggle_term(4, { cmd = "lazygit", close_on_exit = true }) end,
        mode = { "n", "t" },
        desc = "Terminal: Lazygit",
      },
      {
        "<A-t>",
        function() toggle_term(5, { close_on_exit = false }) end,
        mode = { "n", "t" },
        desc = "Terminal: Tests",
      },
    }, numbered_keys),
    opts = {
      hide_numbers = false,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      float_opts = fullscreen_float,
    },
  },
}
