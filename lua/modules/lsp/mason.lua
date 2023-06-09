local servers = {
	"lua_ls",
	"tsserver",
	"emmet_ls",
	"prismals",
	"pyright",
	"clangd",
	"cssls",
	"rust_analyzer",
	"yamlls",
	"html",
	"bashls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "",
			package_pending = "",
			package_uninstalled = "󰇚",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("modules.lsp.lspconfig").on_attach,
		capabilities = require("modules.lsp.lspconfig").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "modules.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
