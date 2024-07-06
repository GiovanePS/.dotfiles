if true then
  return {}
end

return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    -- Open DAP UI when debugging starts
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end

    -- Close DAP UI before debugging terminates
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end

    -- Close DAP UI before debugging exits
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "", linehl = "", numhl = "" })
    vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })

    -- Define keymaps for DAP
    vim.keymap.set("n", "<F5>", require("dap").continue)
    vim.keymap.set("n", "<F10>", require("dap").step_over)
    vim.keymap.set("n", "<F11>", require("dap").step_into)
    vim.keymap.set("n", "<F12>", require("dap").step_out)
    vim.keymap.set("n", "<leader>B", require("dap").toggle_breakpoint)
  end,
}
