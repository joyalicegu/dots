setlocal breakindent breakindentopt=list:2
setlocal nonumber cursorline
setlocal viewoptions=folds,cursor
inoremap <buffer> <Tab> <C-t>
inoremap <buffer> <S-Tab> <C-d>
iab <expr> ds strftime("%F")
iab <expr> ts strftime("%R")
augroup mdview
    au!
    au BufWinLeave *.md mkview
    au BufWinEnter *.md silent loadview
augroup END
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 0
highlight highlightTODO ctermbg=green ctermfg=black
call matchadd('highlightTODO','TODO')
highlight highlightLATER ctermbg=black ctermfg=yellow
call matchadd('highlightLATER','LATER')
