return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
        },
      },
    })
    vim.keymap.set("n", "<leader>n", ":Neotree filesystem toggle left<CR>", {})
    vim.keymap.set("n", "<leader>m", ":Neotree filesystem focus<CR>", {})
  end,
}
