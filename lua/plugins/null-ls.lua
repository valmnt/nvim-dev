return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint.with({
                    command = "eslint_d",
                    diagnostics_format = "[eslint] #{m}",
                })
            },
        })
    end,
}