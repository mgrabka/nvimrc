return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    -- Makes some sense that bigger numbers are further away, right?
    vim.keymap.set("n", "<A-q>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<A-w>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<A-e>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<A-r>", function() harpoon:list():select(4) end)
    vim.keymap.set("n", "<A-1>", function() harpoon:list():select(5) end)
    vim.keymap.set("n", "<A-2>", function() harpoon:list():select(6) end)
    vim.keymap.set("n", "<A-3>", function() harpoon:list():select(7) end)
    vim.keymap.set("n", "<A-4>", function() harpoon:list():select(8) end)

    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
  end
}
