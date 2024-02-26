-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "ansiblels",
        "terraformls",
        "gopls",
        "tflint",
        "yamlls",
        "pylsp",
        "bashls",
        -- {
        --   "yamlls",
        --   schemas = {
        --     kubernetes = "*.yaml",
        --     ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
        --     ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
        --     ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
        --     ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
        --     ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
        --     ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
        --     ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
        --     ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
        --     ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
        --     ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
        --     ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
        --     ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
        --   },
        -- },
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "prettier",
        "stylua",
        "golangci-lint",
        "tflint",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "delve",
        "go-debug-adapter",
      })
    end,
  },
}
