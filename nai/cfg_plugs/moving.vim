" --------------------------------------------------
" vim-airline
" --------------------------------------------------
if has_key(g:plugs, 'vim-airline')
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_alt_sep = 'ﰖ'
    let g:airline#extensions#tabline#buffer_nr_show = 0
    let g:airline#extensions#tabline#formatter = 'default'
    let g:airline_theme = 'dark'  " themes
    let g:airline#extensions#keymap#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#buffer_idx_format = {
                \ '0': ' ',
                \ '1': ' ',
                \ '2': ' ',
                \ '3': ' ',
                \ '4': ' ',
                \ '5': ' ',
                \ '6': ' ',
                \ '7': ' ',
                \ '8': ' ',
                \ '9': ' '
                \}
    nmap <Space>1 <Plug>AirlineSelectTab1
    nmap <Space>2 <Plug>AirlineSelectTab2
    nmap <Space>3 <Plug>AirlineSelectTab3
    nmap <Space>4 <Plug>AirlineSelectTab4
    nmap <Space>5 <Plug>AirlineSelectTab5
    nmap <Space>6 <Plug>AirlineSelectTab6
    nmap <Space>7 <Plug>AirlineSelectTab7
    nmap <Space>8 <Plug>AirlineSelectTab8
    nmap <Space>9 <Plug>AirlineSelectTab9
    nnoremap <F1> :b#<CR>
    nnoremap <Space>0 :b#<CR>
    nnoremap <M-0> :b#<CR>
    nnoremap <M-]> :bn<CR>
    nnoremap <M-[> :bp<CR>
    let g:airline_section_z = "%p%% %{g:airline_symbols.linenr}%l/%L \ue0a1:%c"
endif


" --------------------------------------------------
" vim-sneak
" --------------------------------------------------
if has_key(g:plugs, 'vim-sneak')
    let g:sneak#label = 1
    nmap + <Plug>Sneak_;
    omap + <Plug>Sneak_;
    xmap + <Plug>Sneak_;
    nmap _ <Plug>Sneak_,
    omap _ <Plug>Sneak_,
    xmap _ <Plug>Sneak_,
endif


" --------------------------------------------------
" vim-bookmarks
" --------------------------------------------------
if has_key(g:plugs, 'vim-bookmarks')
    " highlight BookmarkSign ctermbg=NONE ctermfg=160
    " highlight BookmarkLine ctermbg=194 ctermfg=NONE
    let g:bookmark_sign = ''
    let g:bookmark_highlight_lines = 1
endif


" --------------------------------------------------
" quick-scope
" --------------------------------------------------
if has_key(g:plugs, 'quick-scope')
    let g:qs_highlight_on_keys = ['f', 'F', 't', 'T', 'w', 'b']
    augroup qs_colors
        autocmd!
        autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
        autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
    augroup END
    let g:qs_max_chars=150
endif
