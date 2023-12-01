---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>w"] = { "<cmd>w<CR>", "Save" },
    ["<leader>gg"] = { "<cmd>LazyGit<CR>", "Open LazyGit" },
    ["<leader>tf"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end, "Float Terminal"
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
