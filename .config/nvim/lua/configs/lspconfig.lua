require("nvchad.configs.lspconfig").defaults()

local servers = {
    "html",
    "cssls",
    "ts_ls",       -- JavaScript/TypeScript
    "rust_analyzer", -- Rust
    "gopls",        -- Go
    "pyright",      -- Python
    "bashls",       -- Bash
    "dockerls",     -- Dockerfile
    "yamlls",       -- YAML (includes CI/CD files)
}
vim.lsp.enable(servers)

-- Configure YAML language server for better CI/CD support
vim.lsp.config.yamlls = {
    settings = {
        yaml = {
            schemas = {
                kubernetes = "/*.yaml",
                ["https://json.schemastore.org/github-workflow.json"] = ".github/workflows/*",
                ["https://json.schemastore.org/gitlab-ci.json"] = "*/.gitlab-ci.yml",
                ["https://json.schemastore.org/docker-compose.json"] = "docker-compose*.yml",
            },
            format = {
                enable = true,
                singleQuote = false,
                bracketSpacing = true,
            },
            validate = true,
            completion = true,
        },
    },
}

-- Configure Docker language server
vim.lsp.config.dockerls = {
    settings = {
        docker = {
            languageserver = {
                formatter = {
                    ignoreMultilineInstructions = true,
                },
            },
        },
    },
}

-- Configure Bash language server
vim.lsp.config.bashls = {
    filetypes = { "sh", "bash", "zsh" },
}

-- Configure JavaScript/TypeScript language server
vim.lsp.config.ts_ls = {
    settings = {
        javascript = {
            format = {
                indentSize = 4,
                tabSize = 4,
            },
        },
        typescript = {
            format = {
                indentSize = 4,
                tabSize = 4,
            },
        },
    },
}

-- read :h vim.lsp.config for changing options of lsp servers
