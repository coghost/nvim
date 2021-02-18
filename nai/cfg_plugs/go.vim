" --------------------------------------------------
" vim-go
" --------------------------------------------------
if has_key(g:plugs, 'vim-go')
    let g:go_def_mode='gopls'
    let g:go_info_mode='gopls'
    let g:go_code_completion_enabled = 0
    let g:go_def_mapping_enabled = 0
    let g:go_doc_keywordprg_enabled = 0
    let g:go_doc_max_height = 0
    " au FileType go nmap <F5> <Plug>(go-run-split)
endif
