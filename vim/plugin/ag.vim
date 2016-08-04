function! s:VisualAg()
  let temp = @"
  normal! gvy
  let escaped_pattern = escape(@", "[]().*")
  let @" = temp
  execute "Ag! '" . escaped_pattern . "'"
endfunction

nnoremap \ :Ag!<SPACE> " Search
vnoremap \ :<C-u>call <sid>VisualAg()<cr> " Search for word in selected text
nnoremap \| :Ag! '<C-r><C-w>'<cr> " Search for word under cursor
