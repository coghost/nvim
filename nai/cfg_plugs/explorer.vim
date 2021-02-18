" --------------------------------------------------
" vista.vim
" --------------------------------------------------
if has_key(g:plugs, 'vista.vim')
    nmap <F9> :Vista!!<CR>

    function! NearestMethodOrFunction() abort
        return get(b:, 'vista_nearest_method_or_function', '')
    endfunction
    set statusline+=%{NearestMethodOrFunction()}
    autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

    let g:vista#renderer#enable_icon = 1
    let g:vista_default_executive = 'ctags'
    let g:vista_executive_for = {
                \ 'cpp': 'vim_lsp',
                \ 'php': 'vim_lsp',
                \ 'python': 'coc',
                \ }

    " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
    let g:vista#renderer#icons = {
                \   "function": "\uf794",
                \   "variable": "\uf71b",
                \  }
    " let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
    let g:vista_icon_indent = ["▸ ", ""]
endif


" --------------------------------------------------
" chadtree
" --------------------------------------------------
if has_key(g:plugs, 'chadtree')
    lua vim.api.nvim_set_var("chadtree_ignores", { name = {".*", ".git"} })
endif


" --------------------------------------------------
" vim-clap
" --------------------------------------------------
if has_key(g:plugs, 'vim-clap')
    " alt+c == ç
    " nnoremap <silent> ç :Clap<CR>
    " nnoremap <silent> <M-c> :Clap bcommits<CR>
    " alt+f == ƒ
    " nnoremap <silent> ƒ :Clap files<CR>
    " nnoremap <silent> <M-f> :Clap bcommits<CR>
    " alt+b == ∫
    " nnoremap <silent> ∫ :Clap bcommits<CR>
    " nnoremap <silent> <M-b> :Clap bcommits<CR>
endif


" --------------------------------------------------
" vim-floaterm
" --------------------------------------------------

if has_key(g:plugs, 'vim-floaterm')
    " let g:floaterm_keymap_new    = '<F7>'
    " let g:floaterm_keymap_prev   = '<F8>'
    " let g:floaterm_keymap_next   = '<F9>'
    " let g:floaterm_keymap_toggle = '<F12>'
    let g:floaterm_width = 0.9
    let g:floaterm_height = 0.9
    " nnoremap   <silent>   <F7>    :FloatermNew<CR>
    " tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
    " nnoremap   <silent>   <F8>    :FloatermPrev<CR>
    " tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
    " nnoremap   <silent>   <F9>    :FloatermNext<CR>
    " tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
    nnoremap   <silent>   <F12>   :FloatermToggle<CR>
    tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

    " hi Floaterm guibg=black
    " hi FloatermBorder guibg=orange guifg=cyan
    " hi FloatermNC guibg=gray
    command! Ranger FloatermNew ranger
endif


" --------------------------------------------------
" rnvimr: TODO
" --------------------------------------------------
if has_key(g:plugs, 'rnvimr')
    " Make Ranger replace netrw and be the file explorer
    let g:rnvimr_ex_enable = 1
    let g:rnvimr_enable_picker = 1
    let g:rnvimr_draw_border = 0
    let g:rnvimr_hide_gitignore = 1
    let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}
    let g:rnvimr_enable_bw = 1
    let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
    highlight link RnvimrNormal CursorLine
    " nmap <Space>p :RnvimrToggle<CR>
    nnoremap <silent> <M-o> :RnvimrToggle<CR>
    tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>
    let g:rnvimr_action = {
                \ '<C-t>': 'NvimEdit tabedit',
                \ '<C-x>': 'NvimEdit split',
                \ '<C-v>': 'NvimEdit vsplit',
                \ 'gw': 'JumpNvimCwd',
                \ 'yw': 'EmitRangerCwd'
                \ }
    let g:rnvimr_ranger_views = [
                \ {'minwidth': 90, 'ratio': []},
                \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
                \ {'maxwidth': 49, 'ratio': [1]}
                \ ]
    let g:rnvimr_layout = {
                \ 'relative': 'editor',
                \ 'width': float2nr(round(0.9 * &columns)),
                \ 'height': float2nr(round(0.9 * &lines)),
                \ 'col': float2nr(round(0.05 * &columns)),
                \ 'row': float2nr(round(0.05 * &lines)),
                \ 'style': 'minimal'
                \ }
endif


" --------------------------------------------------
" fzf
" --------------------------------------------------
if has_key(g:plugs, 'fzf')
    let g:fzf_history_dir = '~/.local/share/fzf-history'
endif


" --------------------------------------------------
" startify
" --------------------------------------------------
if has_key(g:plugs, 'vim-startify')
    let g:startify_session_dir = '~/.config/nvim/session'
    let g:startify_session_autoload = 1
    let g:startify_session_persistence = 1
    let g:startify_session_delete_buffers = 1
    let g:startify_change_to_vcs_root = 1
    let g:startify_fortune_use_unicode = 1
    let g:startify_session_persistence = 1
    let g:startify_enable_special = 0

    " returns all modified files of the current git repo
    " `2>/dev/null` makes the command fail quietly, so that when we are not
    " in a git repo, the list will be empty
    function! s:gitModified()
        let files = systemlist('git ls-files -m 2>/dev/null')
        return map(files, "{'line': v:val, 'path': v:val}")
    endfunction

    " same as above, but show untracked files, honouring .gitignore
    function! s:gitUntracked()
        let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
        return map(files, "{'line': v:val, 'path': v:val}")
    endfunction

    let g:startify_lists = [
                \ { 'type': 'sessions',  'header': ['   Sessions']       },
                \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
                \ { 'type': 'files',     'header': ['   MRU']            },
                \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
                \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
                \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
                \ { 'type': 'commands',  'header': ['   Commands']       },
                \ ]
endif


" --------------------------------------------------
" vim-rooter
" --------------------------------------------------
if has_key(g:plugs, 'vim-rooter')
    let g:rooter_patterns = ['!=*.go']
endif
