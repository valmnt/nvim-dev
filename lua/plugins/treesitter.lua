return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = {
        ensure_installed = {
            "typescript",
            "javascript",
            "tsx",
            "html",
            "css"
        },
        highlight = {
            enable = true,  -- Active la coloration syntaxique
        },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)

        -- Vérifier et installer le parser TypeScript automatiquement
        local parsers = require("nvim-treesitter.parsers").get_parser_configs()
        if not parsers.typescript then
            vim.cmd("TSInstall typescript")
        end
        if not parsers.javascript then
            vim.cmd("TSInstall javascript")
        end
        if not parsers.tsx then
            vim.cmd("TSInstall tsx")
        end
        if not parsers.html then
            vim.cmd("TSInstall html")
        end
        if not parsers.css then
            vim.cmd("TSInstall css")
        end

    end
}
