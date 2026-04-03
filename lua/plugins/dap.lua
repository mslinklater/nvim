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
}
