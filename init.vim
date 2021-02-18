" ==========================================
" Leader Key, Set it before all configs
" ==========================================
let mapleader = ','   " only work in local namespace
let g:mapleader = ',' " work for global

" ==========================================
" General settings
" ==========================================
source $HOME/.config/nvim/nai/plugs.vim
source $HOME/.config/nvim/nai/general_settings.vim
source $HOME/.config/nvim/nai/key_mappings.vim
source $HOME/.config/nvim/nai/au_cmd.vim
source $HOME/.config/nvim/nai/local_only.vim


" ==========================================
" Plugin configuration
" ==========================================
source $HOME/.config/nvim/nai/cfg_plugs/assist.vim
source $HOME/.config/nvim/nai/cfg_plugs/coc_family.vim
source $HOME/.config/nvim/nai/cfg_plugs/explorer.vim
source $HOME/.config/nvim/nai/cfg_plugs/git.vim
source $HOME/.config/nvim/nai/cfg_plugs/moving.vim
source $HOME/.config/nvim/nai/cfg_plugs/program.vim
source $HOME/.config/nvim/nai/cfg_plugs/python.vim
source $HOME/.config/nvim/nai/cfg_plugs/go.vim
source $HOME/.config/nvim/nai/cfg_plugs/task_mgmt.vim
source $HOME/.config/nvim/nai/cfg_plugs/themes.vim
source $HOME/.config/nvim/nai/cfg_plugs/typing.vim
source $HOME/.config/nvim/nai/cfg_plugs/ui.vim
