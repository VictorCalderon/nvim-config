function ColorMyPencils(color)
  local chosenColor = color or "tokyonight"
  vim.cmd.colorscheme(chosenColor)

  -- Set background transparent
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#D1D1D1" })
  vim.api.nvim_set_hl(0, "DiffAdd", { bg = "none" })
  vim.api.nvim_set_hl(0, "DiffChange", { bg = "none" })
  vim.api.nvim_set_hl(0, "DiffDelete", { bg = "none" })
  vim.api.nvim_set_hl(0, "DiffText", { bg = "none" })
end

ColorMyPencils()
