M = {}

M.check_config = function()
	vim.print(require("print-config.config").config)
end

return M
