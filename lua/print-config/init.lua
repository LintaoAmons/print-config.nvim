M = {}

M.check_config = function()
  vim.print(require("print-config.config").config)
end

M.setup = require("print-config.config").setup

return M
