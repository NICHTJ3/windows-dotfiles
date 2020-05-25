"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                               Neovim plugins                                 "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"     Install Vim Plug if not installed and installs plugins on first launch   "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif


call plug#begin()
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                         COC Autocomplete and Linting                         "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                              Snippets and Syntax                             "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'honza/vim-snippets' " Generic snippets
Plug 'sheerun/vim-polyglot' " Generic syntax
Plug 'szymonmaszke/vimpyter' " Edit jupyter files in vim
Plug 'momota/cisco.vim'
" Highlights ctags in file
Plug 'abudden/taghighlight-automirror',{'for':[
      \'c',
      \'cpp',
      \'php',
      \'python'
      \'javascript',
      \]}

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                                      Git                                     "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim',{'on':'GV'}

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                          File finding and searching                          "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'wincent/ferret' " Integration with ag or silver searcher
Plug 'junegunn/fzf', { 'dir': '~/.local/bin/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                                     Fixes                                    "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'bfrg/vim-qf' " Fixes issues with built in quick fix menu
Plug 'tpope/vim-repeat' " Repeat with . sequences that use pluggins
Plug 'zoubin/vim-gotofile' " Better go to file
Plug 'pgdouyon/vim-evanesco' " Clears search highlighting on move

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                               Must have plugins                              "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'roxma/vim-paste-easy' " Automaticaly set paste
Plug 'unblevable/quick-scope' " Highlight jumps to words with f
Plug 'tpope/vim-surround' " Change/Add surrounding character
Plug 'tomtom/tcomment_vim' " Toggle comments
Plug 'rhysd/committia.vim' " Better commits
Plug 'tpope/vim-speeddating' " Increment and Decrement dates
Plug 'editorconfig/editorconfig-vim' " Editor config
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'} " File explorer
Plug 'mbbill/undotree'
Plug 'tpope/vim-obsession' " Automaticaly update and make a session file
Plug 'jiangmiao/auto-pairs'

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                                     TMUX                                     "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'roxma/vim-tmux-clipboard' " Unifies vim clipboards across tmux panes
Plug 'christoomey/vim-tmux-navigator' " Unifies tmux and vim navigation
Plug 'tmux-plugins/vim-tmux-focus-events' " Required for tmux clipboard

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                                  Note taking                                 "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim',{'do':'cd app & npm install'} " Markdown

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                                      UI                                      "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Plug 'ryanoasis/vim-devicons' " Gui like icons
Plug 'vim-airline/vim-airline' " Better status
" Colorschemes
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
