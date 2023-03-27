" Displaying line numbers
set number

" Highlighting the 80 character line length limit
set colorcolumn=80

" Make special characters visible (such as carriage return, tabulations, ...)
set list

" Keep the same indentation when creating new lines
set autoindent

" Tabulations as spaces, should be changed if editing tabulated files
set expandtab
set tabstop=4
" 0 means identical to tabstop
set shiftwidth=0

colorscheme slate

" Allow executing .vimrc in the working directory (unsafe)
set exrc

" Nicer scrolling up/down
nnoremap <PageUp> M9<Up>zz
nnoremap <PageDown> M9<Down>zz

" Center on screen after reaching tag location
nnoremap <c-]> <c-]>zz

" Shortcut to quickly refactor in the current file
function! Refactor()
  let source = expand("<cword>")
  call inputsave()
  let target = input("Replace with: ")
  call inputrestore()
  execute '%s/\<' . source . '\>/' . target . '/gc'
endfunction
nnoremap r :call Refactor()<cr>
