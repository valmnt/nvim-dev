return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.diagnostics.eslint,
                null_ls.builtins.code_actions.eslint,
                null_ls.builtins.formatting.eslint,
            },
        })
    end,
}