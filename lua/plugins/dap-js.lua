---@type LazySpec
return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    for _, adapter in ipairs({ "pwa-node", "pwa-chrome" }) do
      dap.adapters[adapter] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "js-debug-adapter",
          args = { "${port}" },
        },
      }
    end

    for _, lang in ipairs({ "javascript", "typescript", "javascriptreact", "typescriptreact" }) do
      dap.configurations[lang] = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch current file (Node)",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
        {
          type = "pwa-chrome",
          request = "launch",
          name = "Launch Chrome (localhost:5173)",
          url = "http://localhost:5173",
          webRoot = "${workspaceFolder}/src",
        },
      }
    end
  end,
}
