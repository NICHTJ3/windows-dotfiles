"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                              Neovim AutoCommands                             "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
if has("autocmd")
  augroup SourceVimrcOnSave
    autocmd!
    autocmd BufWritepost *.vim source $MYVIMRC
  augroup END

  augroup CustomSyntax
    autocmd!
    autocmd BufWinEnter *.kotlin set filetype=kotlin
    autocmd BufWinEnter *.vue set syntax=vue
    autocmd BufWinEnter config set syntax=i3config
    autocmd BufWinEnter *.pug set syntax=pug
    autocmd BufWinEnter *.cisco set syntax=cisco
    autocmd BufWinEnter *.css set filetype=css
  augroup END

  augroup Indentation
    autocmd!
    autocmd FileType cs set sw=4 ts=4 sts=4
    autocmd FileType cucumber set sw=2 ts=2 sts=2 noet
    autocmd BufWinEnter *.ipynb set sw=4 ts=4 sts=4 et
    autocmd BufWinEnter *.py set sw=4 ts=4 sts=4 et
  augroup end

  augroup Folding
    autocmd!
    autocmd FileType cs setlocal foldmethod=indent
    autocmd FileType vim setlocal foldmethod=marker
  augroup end

  augroup Terminal
    autocmd!
    autocmd TermOpen * startinsert
    " Turn off line numbers etc
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber
  augroup end

  augroup FileTypeBindings
    autocmd!
    autocmd FileType fzf tnoremap <buffer> <c-h> <c-x> " Open in vertical split
    autocmd FileType fzf tnoremap <buffer> <esc> <c-c> " Close fzf with escape
    autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
    autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>
  augroup end

  augroup Views
    autocmd!
    autocmd BufWinLeave *.md mkview
    autocmd BufWinEnter *.md silent loadview
  augroup end

  " Color all columns past 81
  autocmd! Filetype * let &l:colorcolumn='+' . join(range(1, 254), ',+')
  " Vimwiki uses markdown syntax
  autocmd! FileType vimwiki set syntax=markdown
  " Coc highlight on cursorhold
  autocmd! CursorHold * silent call CocActionAsync('highlight')
  " Close Nerdtree if it's the last open window
  autocmd! bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  " Highlight yanked text
  autocmd! TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 200)
  " Automatically install missing plugins on startup
  autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|   PlugInstall --sync | q
    \| endif
endif
