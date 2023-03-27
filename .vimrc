set number
set colorcolumn=80
set list
set autoindent
set expandtab
colorscheme slate
set exrc
nnoremap <PageUp> M9<Up>zz
nnoremap <PageDown> M9<Down>zz
nnoremap <c-]> <c-]>zz

function! Refactor()
  let source = expand("<cword>")
  call inputsave()
  let target = input("Replace with: ")
  call inputrestore()
  execute '%s/\<' . source . '\>/' . target . '/gc'
endfunction
nnoremap r :call Refactor()<cr>
