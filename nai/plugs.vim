" ==========================================
" Install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" ==========================================

function! Assistance() abort
    Plug 'voldikss/vim-translator'
    Plug 'liuchengxu/vim-which-key'
endfunction

function! CocFamily() abort
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endfunction

function! GitTools() abort
    Plug 'junegunn/gv.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'APZelos/blamer.nvim'
    Plug 'lambdalisue/gina.vim'
endfunction

function! Explorer() abort
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'liuchengxu/vista.vim'                                   " code outline
    Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' } " popup navigation
    Plug 'voldikss/vim-floaterm'
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'mhinz/vim-startify'                                     " most recent open files history
    Plug 'airblade/vim-rooter'
endfunction

function! Markdowns() abort
    Plug 'godlygeek/tabular' " tabular plugin is used to format tables
    Plug 'elzr/vim-json'     " JSON front matter highlight plugin
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
endfunction

function! Moving() abort
    Plug 'vim-airline/vim-airline' " Buffer Tabs and bottom statusline
    Plug 'vim-airline/vim-airline-themes'
    Plug 'justinmk/vim-sneak'      " quick jump to 2 chars
    Plug 'unblevable/quick-scope'  " highlight for a unique char when us f,F
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'andymass/vim-matchup'
endfunction

function! Programming() abort
    Plug 'tpope/vim-commentary'                         " comment on codes
    Plug 'junegunn/vim-easy-align'                      " align better
    Plug 'jiangmiao/auto-pairs'                         " auto pair inputs
    Plug 'tpope/vim-surround'                           " quick input
    Plug 'tpope/vim-repeat'                             " support repeat other plugins
    Plug 'brooth/far.vim'                               " quick find/replace in all files
    Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multiple edit
    Plug 'mbbill/undotree'                              " I can regret more
    Plug 'pedrohdz/vim-yaml-folds'                      " fold yaml file
    Plug 'ntpeters/vim-better-whitespace'               " remove whitespace
    Plug 'thinca/vim-quickrun'
endfunction

function! PythonDedicated() abort
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " python colorize
    Plug 'SirVer/ultisnips'                                " snippets
    Plug 'honza/vim-snippets'                              " real snippets
    " Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
    Plug 'tpope/vim-abolish'
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
    Plug 'jupyter-vim/jupyter-vim'
    Plug 'puremourning/vimspector'
endfunction

function! GoDedicated() abort
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
endfunction

function! JsDedicated() abort
    Plug 'yuezk/vim-js'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'maxmellon/vim-jsx-pretty'
endfunction

function! LuaDedicated() abort
    Plug 'xolox/vim-lua-ftplugin'
    Plug 'vim-scripts/luainspect.vim'
    Plug 'xolox/vim-misc'
endfunction

function! TaskManagement() abort
    Plug 'romgrk/todoist.nvim', { 'do': ':TodoistInstall' }
    Plug 'n0v1c3/vira', { 'do': './install.sh' }
    Plug 'jceb/vim-orgmode'
endfunction

function! Themes() abort
    " Plug 'hzchirs/vim-material'          " themes
    " Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    " Plug 'joshdick/onedark.vim'
    Plug 'jsit/toast.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'ayu-theme/ayu-vim'
    Plug 'mhartington/oceanic-next'
endfunction

function! Typing() abort
    Plug 'junegunn/goyo.vim'        " typing experience
    Plug 'junegunn/limelight.vim'
endfunction

function! UIUE() abort
    Plug 'ryanoasis/vim-devicons'
    Plug 'Yggdroot/indentLine'           " text indent vertical line
    Plug 'machakann/vim-highlightedyank' " highlight yank
    Plug 'luochen1990/rainbow'           " colorful matched ({})
    Plug 'psliwka/vim-smoothie'          " wonderful scroll up/down experience
    Plug 'dominikduda/vim_current_word'
endfunction

" load installed plugs
function! CustomizePlugs() abort
    call Assistance()
    call CocFamily()
    call GitTools()
    call Explorer()
    call Moving()
    call Programming()
    call PythonDedicated()
    call GoDedicated()
    call Markdowns()
    " call JsDedicated()
    call LuaDedicated()
    call TaskManagement()
    call Themes()
    call Typing()
    call UIUE()
endfunction

call plug#begin('~/.nvim/autoload/plugged')
call CustomizePlugs()
call plug#end()
