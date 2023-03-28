local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

vim.opt.termguicolors = true
bufferline.setup({
	options = {
		truncate_names = false,
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
		-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
		-- 	local s = " "
		-- 	for e, n in pairs(diagnostics_dict) do
		-- 		local sym = e == "error" and " " or (e == "warning" and " " or "")
		-- 		s = s .. n .. sym
		-- 	end
		-- 	return s
		-- end,
		separator_style = "thin", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true, -- use a "true" to enable the default, or set your own character
			},
		},
	},
})
