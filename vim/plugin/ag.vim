function! s:VisualAg()
  let temp = @"
  normal! gvy
  let escaped_pattern = escape(@", "[]().*")
  let @" = temp
  execute "Ag! '" . escaped_pattern . "'"
endfunction

nnoremap \ :Ag!<SPACE>
vnoremap \ :<C-u>call <sid>VisualAg()<cr>
nnoremap \| :Ag! '<C-r><C-w>'<cr>
