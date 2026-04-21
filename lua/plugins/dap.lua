return {
  -- Overrids DAP to ensure codelldb is always installed automatically
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "codelldb" })
      return opts
    end,
  },

  -- Ensure clangd LSP is always installed, which is required for codelldb to work properly.
  {
    "mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "clangd" })
      return opts
    end,
  },

  -- Setup the ability to debug specific catch2 tests
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require("dap")

      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb",
          args = { "--port", "${port}" },
        },
      }

      local function debug_catch2(filter)
        dap.run({
          name = "Catch2 single test",
          type = "codelldb",
          request = "launch",
          program = vim.fn.getcwd() .. "/build/RayTracerChallengeTests",
          cwd = vim.fn.getcwd(),
          stopOnEntry = false,
          args = filter ~= "" and { filter } or {},
        })
      end

      vim.keymap.set("n", "<leader>df", function()
        debug_catch2(vim.fn.input("Catch2 filter: "))
      end)

      vim.keymap.set("n", "<leader>dF", function()
        local line = vim.api.nvim_get_current_line()
        local name = line:match([[TEST_CASE%s*%(%s*"([^"]+)"]])
        debug_catch2(name or vim.fn.input("Catch2 filter: "))
      end)
    end,
  },
}
