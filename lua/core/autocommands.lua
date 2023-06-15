vim.cmd([[
augroup numbertoggle
autocmd!
autocmd BufEnter,FocusGained,InsertLeave * set rnu
autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
]])
