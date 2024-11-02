return {
    "prettier/vim-prettier",
    build = "yarn install",
    lazy = false,
    config = function()
      vim.g["prettier#config#autoformat"] = 1
      vim.g["prettier#config#config_precedence"] = "prefer-file"
    end,
    ft = { "javascript", "typescript", "javascriptreact", "typescriptreact" }
}