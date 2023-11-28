local DEFAULT_CONFIG = {
	databaseUrl = "postgres://username:password@localhost:5432/database",

	logging = {
		level = "info",
		formats = {
			json = true,
			text = false,
		},
		targets = {
			console = true,
			file = {
				enable = false,
				path = "/var/log/app.log",
			},
		},
	},
}

local M = {
	config = DEFAULT_CONFIG,
}

M.setup = function(user_config)
	vim.print("Setup method called by: " .. user_config.called_by)
	M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
end

return M
