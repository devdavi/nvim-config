return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function () 
  local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "php", "lua", "vim", "vimdoc", "query", "css", "javascript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
}
