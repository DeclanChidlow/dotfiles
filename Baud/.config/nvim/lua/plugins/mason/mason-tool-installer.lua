-- Install and upgrade third party tools automatically
-- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim

return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    init = function()
        require("mason-tool-installer").setup({
            ensure_installed = {
                -- LSPs
                "bashls",
                "cssls",
                "tailwindcss",
                "emmet_language_server",
                "html",
                "jsonls",
                "phpactor",
                "pylsp",
                "rust_analyzer",
                "taplo",
                "tsserver",
                "yamlls",
                -- Formatters
                "beautysh",
                "prettier",
                "prettierd",
                "ruff",
            },
        })
    end,
}
