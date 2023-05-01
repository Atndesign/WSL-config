vim.cmd("autocmd!")
vim.cmd([[
  filetype plugin indent on
  syntax on
]])
vim.opt.clipboard = 'unnamedplus'

local config = {
  hidden = true, --Enable syntax highlighi  
  mouse = 'r', 
  encoding = "utf-8", --The encoding displayed
  fileencoding = "utf-8",
  title = true,
  autoindent = true,
  ruler = true,
  splitbelow = true,
  splitright = true,
  smartindent = true,
  expandtab = true,
  backup = false,
  laststatus = 1,
  cmdheight = 2,
  showcmd = true,
  backupskip = { "/tmp/*", "/private/tmp/*" },
  termguicolors = true,
  inccommand = "split",
  smarttab = true,
  breakindent = true,
  shiftwidth = 2,
  number = true,
  tabstop = 2,
  wrap = false,
  backspace = { "start", "eol", "indent" },
  cursorline = true,
  winblend = 0,
  wildoptions = "pum",
  pumblend = 5,
  swapfile = false
}

--Execute all config 
for i, v in pairs(config) do
  vim.opt[i] =v
end

