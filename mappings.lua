-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },
    -- harpoon
    -- ["<leader>xx"] = require("harpoon.mark").add_file(),
    -- ["<leader>xd"] = require("harpoon.mark").rm_file(),
    -- ["<leader>xm"] = require("harpoon.ui").toggle_quick_menu(),
    -- ["<leader>xn"] = require("harpoon.ui").nav_next(),
    -- ["<leader>xp"] = require("harpoon.ui").nav_prev(),
    -- mappingsseen under group name "Buffer"
    ["<leader>xa"] = { function() require("harpoon.mark").add_file() end, desc = "Harpoon add file." },
    ["<leader>xd"] = { function() require("harpoon.mark").rm_file() end, desc = "Harpoon rm file." },
    ["<leader>xm"] = { function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon quick menu." },
    ["<leader>xn"] = { function() require("harpoon.ui").nav_next() end, desc = "Harpoon next file." },
    ["<leader>xp"] = { function() require("harpoon.ui").nav_prev() end, desc = "Harpoon prev file." },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<F1>"] = { 'copilot#Accept("<CR>")', silent = true, expr = true },
    -- ["<F2>"] = { "copilot#Next()", silent = true, expr = true },
    -- ["<F3>"] = { "copilot#Previous()", silent = true, expr = true },
  },
}
