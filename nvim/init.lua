vim.o.termguicolors = true -- Enable 24 bit RGB color in the UI
vim.o.syntax = 'on' -- Enable syntax highlighting based on the current file type
vim.o.errorbells = false -- Disable the ding from error messages
vim.o.ignorecase = true -- Ignore case sensitivty in searches when the string you type is all lower case
vim.o.smartcase = true -- When you conduct a search that contains capital letters, the search will be case sensitive
vim.bo.swapfile = false -- Stores entire file contents in memory rather than in a swapfile. Faster, but can crash your computer with large files.
vim.o.backup = false -- Will not create a backup file when overwriting a file.
vim.o.undofile = true -- Saves undo history to an undo file
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir' -- Sets the directory for the undo files (in ~/nvim/config/undodir)
vim.o.incsearch = true -- Shows where your search pattern matches as you type, rather than only once you are done typing.
vim.o.hidden = true -- When you abandon a buffer, it just hides the buffer instead of wiping it clean so you can access it later if you want.
vim.o.completeopt='menuone,noinsert,noselect' -- Shows a popup menu for autocompletes, doesn't insert anything until you select it from the list.
vim.bo.autoindent = true -- Autoindents lines
vim.bo.smartindent = true -- Also automatically indents after curly braces

vim.o.tabstop = 2 -- Number of spaces that a tab character will display as
vim.o.softtabstop = 2 -- Number of spaces the tab key will insert when set to insert spaces instead of tab characters
vim.o.shiftwidth = 2 -- Number of spaces to use for each tab created by autoindent
vim.o.expandtab = true -- When you press tab, it will insert spaces (using softtabstop)
vim.wo.number = true -- Displays line numbers on the left
vim.wo.relativenumber = true -- Dispalys line numbers as lines relative to current line (helps with motion commands)
vim.wo.signcolumn = 'yes' -- Always displays the sign column, a gutter on the left next to the line numbers


vim.g.mapleader = ' ' -- Set the leader to space to avoid pollution global map space

-- Utility function for remapping keys
local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- Key mappings
key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')

local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- Install packer if it isn't already installed
local packer_install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(packer_install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..packer_install_path)
end

-- Initialize packer
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

-- Initialize plugins
packer.startup(function()
  local use = use
  -- add you plugins here like:
  -- use 'neovim/nvim-lspconfig'
  end
)
