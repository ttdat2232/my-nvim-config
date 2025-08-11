return {
	cmd = { "omnisharp" },
	filetypes = { "cs", "cshtml" },
	root_markers = { ".sln", ".csproj" },
	handlers = {
		["textDocument/definition"] = require("omnisharp_extended").handler,
	},
}
