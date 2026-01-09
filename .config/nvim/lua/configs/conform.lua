local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        rust = { "rustfmt" },
        go = { "goimports", "gofmt" },
        python = { "black" },
        bash = { "shfmt" },
        sh = { "shfmt" },
        yaml = { "prettier" },
        yml = { "prettier" },
        dockerfile = { "hadolint" },
    },

    formatters = {
        shfmt = {
            prepend_args = { "-i", "4" }, -- Use 4 spaces for bash scripts
        },
        prettier = {
            prepend_args = { "--tab-width", "4" }, -- Use 4 spaces for prettier
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
