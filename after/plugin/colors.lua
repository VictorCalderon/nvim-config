function ColorMyPencils(color)
  local chosenColor = color or "tokyonight"
  vim.cmd.colorscheme(chosenColor)

  -- Set colors
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "#D4D4D4" })
  vim.api.nvim_set_hl(0, "LspFloatWinBorder", { bg = "none" })
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#D1D1D1" })
  vim.api.nvim_set_hl(0, "DiffAdd", { bg = "none" })
  vim.api.nvim_set_hl(0, "DiffChange", { bg = "none" })
  vim.api.nvim_set_hl(0, "DiffDelete", { bg = "none" })
  vim.api.nvim_set_hl(0, "DiffText", { bg = "none" })

  -- Require tokyonight
  require("tokyonight").setup {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent"
    }
  }
end

ColorMyPencils()
