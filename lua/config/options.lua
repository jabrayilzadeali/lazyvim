-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.updatetime = 200

vim.opt.guicursor = {
  "n-v-c:block", -- Normal, visual, command-line: block cursor
  "i-ci-ve:ver25", -- Insert, command-line insert, visual-exclude: vertical bar cursor with 25% width
  "r-cr:hor20", -- Replace, command-line replace: horizontal bar cursor with 20% height
  "o:hor50", -- Operator-pending: horizontal bar cursor with 50% height
  "a:blinkwait700-blinkoff400-blinkon250", -- All modes: blinking settings
  "sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch: block cursor with specific blinking settings
}

vim.opt.splitkeep = "screen"
-- vim.opt.colorscheme = "tokyonight-moon"
-- vim.cmd("colorscheme default")

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_unlink_border_highlights = true
end

-- https://stackoverflow.com/questions/2490227/how-does-vims-autoread-work
-- Define a global variable to track if the update check has started
if not vim.g.CheckUpdateStarted then
  vim.g.CheckUpdateStarted = 1

  -- Define a function to check for updates
  local function checkUpdate(timer)
    vim.cmd("silent! checktime")
    vim.defer_fn(checkUpdate, 1000)
  end

  -- Start the timer to initiate the update check
  vim.defer_fn(checkUpdate, 1)
end

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_refresh_rate = 60
end
