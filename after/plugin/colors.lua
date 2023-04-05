
function ColorMyPencils(color)
	colors = color or "kanagawa"
	vim.cmd.colorscheme(color)

	-- Set background transparent(oso)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

ColorMyPencils()
