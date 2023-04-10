local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local function footer()
  local total_plugins = #vim.tbl_keys(packer_plugins)
  return total_plugins .. " plugins installed"
end



local logo = {
  "  ██░░▒▒▒▒▒▒▒▒                                      ▒▒▒▒▒▒▒▒░░██  ",
  "  ██░░▒▒▒▒▒▒▒▒▒▒         VCBiotech S.R.L.        ▒▒▒▒▒▒▒▒▒▒▒░░██  ",
  "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒                             ▒▒▒▒▒▒▒▒▒▒▒▒▒░░██  ",
  "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒                         ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░██  ",
  "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                 ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░██  ",
  "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒          ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░██  ",
  "  ██░░░░▒▒▒▒▒▒▒▒            ▒▒▒▒░░▒▒▒▒            ▒▒▒▒▒▒▒▒░░░░██  ",
  "                    ████░░░░▒▒▒▒░░▒▒▒▒░░░░████                    ",
  "             ██▓▓▓▓██   ████░░░░░░░░░░████    ██▓▓▓▓██            ",
  "          ████████          ████░░████          ████████          ",
  "                                ██                                "
}

dashboard.section.header.val = logo

dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles<CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("m", "  Mason", ":Mason<CR>"),
  dashboard.button("q", "  Quit", ":qa<cr>")
}

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

alpha.setup(dashboard.opts)

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
