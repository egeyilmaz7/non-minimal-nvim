return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2", -- make sure it's v2
    dependencies = { "nvim-lua/plenary.nvim" },
  
    config = function()
      local harpoon = require("harpoon")
  
      -- REQUIRED setup (without it keymaps may not work)
      harpoon:setup()
  
      -- Add file
      vim.keymap.set("n", "<leader>o", function()
        harpoon:list():add()
      end, { desc = "Harpoon add file" })
  
      -- Open menu
      vim.keymap.set("n", "<leader>h", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Harpoon quick menu" })
  
      -- Quick select
      vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
    end,
  }
  