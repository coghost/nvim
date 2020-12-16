" --------------------------------------------------
" indentLine
" --------------------------------------------------
if has_key(g:plugs, 'indentLine')
    let g:indentLine_char             = '┊'
    let g:indentLine_color_dark       = 1
    let g:indentLine_faster           = 1
    let g:indentLine_leadingSpaceChar = '·'
    " let g:indentLine_setConceal = 0
    let g:indentLine_fileTypeExclude  = ['json', 'startify', 'dashboard', 'help', 'dashboard-nvim']
endif


" --------------------------------------------------
" vim-highlightedyank
" --------------------------------------------------
if has_key(g:plugs, 'vim-highlightedyank')
    if !exists('##TextYankPost')
        map y <Plug>(highlightedyank)
    endif
    let g:highlightedyank_highlight_duration = 150
endif


" --------------------------------------------------
" rainbow
" --------------------------------------------------
if has_key(g:plugs, 'rainbow')
    let g:rainbow_active = 1
endif
