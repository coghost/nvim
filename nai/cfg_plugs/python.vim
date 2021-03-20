" --------------------------------------------------
" semshi
" --------------------------------------------------
if has_key(g:plugs, 'semshi')
    let g:semshi#filetypes = ['python']
    function! MapSemshi() abort
        if &filetype ==# 'python'
            " nmap <silent> ˚ :Semshi goto name prev<CR>
            nmap <silent> <C-k> :Semshi goto name prev<CR>
            " nmap <silent> ∆ :Semshi goto name next<CR>
            nmap <silent> <C-j> :Semshi goto name next<CR>

            nmap <silent> ]C :Semshi goto class next<CR>
            nmap <silent> [C :Semshi goto class prev<CR>

            " same as ]m/[m
            nmap <silent> ]f :Semshi goto function next<CR>
            nmap <silent> [f :Semshi goto function prev<CR>
            sign define semshiError text=ﮊ  texthl=semshiErrorSign
            hi semshiParameterUnused ctermfg=117 guifg=#00ff00 cterm=underline gui=underline
        endif
    endfunction
    " nnoremap <silent> <leader>ms :call MapSemshi()<CR>
    autocmd FileType python call MapSemshi()
    " autocmd ColorScheme * call MapSemshi()
endif


" --------------------------------------------------
" vim-snippets
" --------------------------------------------------
if has_key(g:plugs, 'vim-snippets')
    let g:ultisnips_python_style = 'google'
    let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
    let g:UltiSnipsJumpForwardTrigger="<c-j>"
    let g:UltiSnipsJumpBackwardTrigger="<c-k>"
endif


" --------------------------------------------------
" vim-pydocstring
" --------------------------------------------------
if has_key(g:plugs, 'vim-pydocstring')
    nmap <silent> <C-_> <Plug>(pydocstring)
    let g:pydocstring_formatter = 'google'
endif


" --------------------------------------------------
" jupyter-vim
" --------------------------------------------------
if has_key(g:plugs, 'jupyter-vim')
    " let g:jupyter_mapkeys = 0
    " Run current file
    nnoremap <buffer> <silent> <leader>R :JupyterRunFile<CR>
    nnoremap <buffer> <silent> <leader>I :PythonImportThisFile<CR>

    " Change to directory of current file
    nnoremap <buffer> <silent> <leader>d :JupyterCd %:p:h<CR>

    " Send a selection of lines
    nnoremap <buffer> <silent> <M-c> :JupyterSendCell<CR>
    nnoremap <buffer> <silent> <leader>x :JupyterSendCell<CR>
    nnoremap <buffer> <silent> <M-,> :JupyterSendRange<CR>
    nnoremap <buffer> <silent> <leader>l :JupyterSendRange<CR>
    nmap     <buffer> <silent> <leader>jv <Plug>JupyterRunTextObj
    vmap     <buffer> <silent> <leader>jv <Plug>JupyterRunVisual

    nnoremap <buffer> <silent> <leader>U :JupyterUpdateShell<CR>

    " Debugging maps
    nnoremap <buffer> <silent> <localleader>B :PythonSetBreak<CR>
endif

" --------------------------------------------------
" vimspector
" --------------------------------------------------
if has_key(g:plugs, 'vimspector')
    let g:vimspector_enable_mappings = 'HUMAN'
    " nmap <F3> <Plug>VimspectorContinue
endif
