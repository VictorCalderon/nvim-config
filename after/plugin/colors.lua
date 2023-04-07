
function ColorMyPencils(color)
    local colors = color or "kanagawa"
	vim.cmd.colorscheme(colors)

	-- Set background transparent(oso)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    vim.api.nvim_set_hl(1, "EndOfBuffer", { fg = "none" })
end

ColorMyPencils()
