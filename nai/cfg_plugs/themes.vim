" --------------------------------------------------
" themes
" --------------------------------------------------
if has_key(g:plugs, 'toast.vim')
    if !exists('g:colors_name')
        silent! colorscheme toast
    endif
endif


" --------------------------------------------------
" material.vim
" --------------------------------------------------
if has_key(g:plugs, 'material.vim')
    " For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
    if (has('nvim'))
        let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
    endif

    if !has('nvim')
        let &t_ZH="\e[3m"
        let &t_ZR="\e[23m"
    endif
    " 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
endif
