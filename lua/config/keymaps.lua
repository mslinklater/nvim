-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- CMake stuff
vim.keymap.set("n", "<leader>mg", "<cmd>CMakeGenerate<cr>", { desc = "CMake Generate" })
vim.keymap.set("n", "<leader>mb", "<cmd>CMakeBuild<cr>", { desc = "CMake Build" })
vim.keymap.set("n", "<leader>mB", "<cmd>CMakeQuickBuild<cr>", { desc = "CMake Quick Build" })
vim.keymap.set("n", "<leader>mc", "<cmd>CMakeClean<cr>", { desc = "CMake Clean" })
vim.keymap.set("n", "<leader>ms", "<cmd>CMakeSelectBuildTarget<cr>", { desc = "CMake Select Build Target" })
vim.keymap.set("n", "<leader>mS", "<cmd>CMakeSelectBuildType<cr>", { desc = "CMake Select Build Type" })
vim.keymap.set("n", "<leader>mr", "<cmd>CMakeRun<cr>", { desc = "CMake Run" })
vim.keymap.set("n", "<leader>mt", "<cmd>CMakeRunTest<cr>", { desc = "CMake Run Tests" })
vim.keymap.set("n", "<leader>ml", "<cmd>CMakeSelectLaunchTarget<cr>", { desc = "CMake Select Launch Target" })
vim.keymap.set("n", "<leader>me", "<cmd>CMakeSettings<cr>", { desc = "CMake Settings" })
vim.keymap.set("n", "<leader>mE", "<cmd>CMakeTargetSettings<cr>", { desc = "CMake Target Settings" })
vim.keymap.set("n", "<leader>md", "<cmd>CMakeDebug<cr>", { desc = "CMake Debug" })
vim.keymap.set("n", "<leader>mD", "<cmd>CMakeQuickDebug<cr>", { desc = "CMake Quick Debug" })
vim.keymap.set("n", "<leader>ma", "<cmd>CMakeLaunchArgs<cr>", { desc = "CMake Launch Args" })
vim.keymap.set("n", "<leader>mx", "<cmd>CMakeStop<cr>", { desc = "CMake Stop" })

local wk = require("which-key")
wk.add({
  { "<leader>m", group = "CMake" },
})
