" --------------------------------------------------
" far.vim
" --------------------------------------------------
if has_key(g:plugs, 'far.vim')
    set lazyredraw
    " set regexpengine=1
    set ignorecase smartcase  " ignore case only when the pattern contains no capital letters
    " shortcut for far.vim find
    nnoremap <silent> <Find-Shortcut>  :Farf<cr>
    vnoremap <silent> <Find-Shortcut>  :Farf<cr>

    " shortcut for far.vim replace
    nnoremap <silent> <Replace-Shortcut>  :Farr<cr>
    vnoremap <silent> <Replace-Shortcut>  :Farr<cr>
endif


" --------------------------------------------------
" vim-easy-align
" --------------------------------------------------
if has_key(g:plugs, 'vim-easy-align')
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)

    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
endif


" --------------------------------------------------
" undotree
" --------------------------------------------------
if has_key(g:plugs, 'undotree')
    nnoremap <space>h :UndotreeToggle<cr>
    let g:undotree_WindowLayout = 1
    let g:undotree_SplitWidth = 48
    let g:undotree_SetFocusWhenToggle = 1
    if has("persistent_undo")
        set undodir=$HOME/tmp/.undodir
        set undofile
    endif
endif


" --------------------------------------------------
" vim-better-whitespace
" --------------------------------------------------
if has_key(g:plugs, 'vim-better-whitespace')
    let g:better_whitespace_enabled=1
    let g:strip_whitespace_on_save=1
    let g:strip_whitespace_confirm=0
    let g:strip_whitelines_at_eof=1
    let g:show_spaces_that_precede_tabs=1
    let g:better_whitespace_verbosity=1

    let g:strip_only_modified_lines=1
    nnoremap ]w :NextTrailingWhitespace<CR>
    nnoremap [w :PrevTrailingWhitespace<CR>
    autocmd FileType python,javascript,c,cpp,ruby EnableStripWhitespaceOnSave
    let g:better_whitespace_filetypes_blacklist=['dashboard', 'todoist']
endif


" --------------------------------------------------
" vim-quickrun
" --------------------------------------------------
if has_key(g:plugs, 'vim-quickrun')
    nmap <F5> <Plug>(quickrun)
    nmap <M-r> <Plug>(quickrun)
endif
