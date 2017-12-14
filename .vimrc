set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'sirver/ultisnips'
Plugin 'VOoM'
Plugin 'lervag/vimtex'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'altercation/vim-colors-solarized'
Plugin 'francoiscabrol/ranger.vim'

" #2 Marker to add plugins
" Plugin 'tpope/vim-commentary'
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'raimondi/delimitmate'





call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number relativenumber 
set cursorline
set showcmd
colorscheme molokai
"colorscheme solorized
set clipboard=unnamedplus
set noswapfile
set showmatch                       " show bracket matches
set ruler                           " show row and column in footer
set scrolloff=2                     " minimum lines above/below cursor
set laststatus=2                    " always show status bar
set nofoldenable                    " disable code folding
set undofile                        " Maintain undo history between sessions
set undodir=~/.vim/undodir
set pastetoggle=<F2>                " easily toggle between vim-paste-mode
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set ts=4                            " set indent to two spaces
set shiftwidth=2                    " sets the width when shifting (</>) left or right
set expandtab                       " use spaces not tab characters
set autoindent
set nowrap                         " set no line wrap
set hlsearch
set incsearch
set ignorecase
set mouse=a

" set the current vim path to file/tab
" autocmd BufEnter * lcd %:p:h


" ######################
" #3 Mappings 
" ######################

  inoremap jj <Esc>
  inoremap jk <Esc>
  vnoremap ff <Esc><Esc>
  "nnoremap <C-u> :UltiSnipsEdit<CR>
  nnoremap <C-u> :VoomToggle latex<CR>
  nnoremap ss :w<CR>


" Leader Mappings
  let mapleader="\<space>"
  " reload Vimrc
  nnoremap <leader>sv :source $MYVIMRC<CR>
  nnoremap <leader>ev :vsplit $MYVIMRC<CR>
  nnoremap <leader>c :VimuxPromptCommand<CR><CR>
  "nnoremap <leader>u :VoomToggle latex<CR>
  nnoremap <leader>u :UltiSnipsEdit<CR>
  nnoremap <leader>n :NERDTreeToggle<CR>
  nnoremap <leader>t :TagbarToggle<CR>
  nnoremap <leader>q :q!<CR>
  "nnoremap <leader>s :w<CR>

" split navigation
  nnoremap <C-j> <C-w><C-j>
  nnoremap <C-k> <C-w><C-k>
  nnoremap <C-l> <C-w><C-l>
  nnoremap <C-h> <C-w><C-h>

" ######################
" Plugin specific Mappings 
" ######################

" UltiSnips and YouCompleteMe
  let g:UltiSnipsEditSplit="vertical"
  let g:UltiSnipsSnippetsDir='~/.vim/mysnippet'
  let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippet"]
  let g:UltiSnipsExpandTrigger = "<C-h>"    "expand snippet
  let g:UltiSnipsJumpForwardTrigger = "<C-j>"  "jump to next marker in snippet
  let g:UltiSnipsJumpBackwardTrigger = "<C-k>" "jump to previous marker in snippet
  let g:ycm_key_invoke_completion = '<C-Space>'    " invoke ycm when it is currently not active
  let g:ycm_key_list_select_completion = ['<C-j>'] " move down in ycm
  let g:ycm_key_list_previous_completion = ['<C-k>'] " move up in ycm

" NerdTree
  let NERDTreeShowHidden=1 " by default NERDTree doesn't show hidden files, so we set it to show hidden files

" VOom
  let g:voom_python_versions = [3]
  let g:voom_tree_width = 48

" vimtex 
  let g:vimtex_view_method = 'zathura'


" ######################
" Functions 
" ######################

" switch spellcheck languages
hi clear SpellBad
" highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
  highlight SpellBad ctermbg=178
  hi SpellBad cterm=underline
let g:myLangList=["nospell","de_de","en_us","de_de,en_us"]
function! ToggleSpell()
    if !exists( "b:myLang" )
        if &spell
            let b:myLang=index(g:myLangList, &spelllang)
        else
            let b:myLang=0
        endif
    endif
        let b:myLang=b:myLang+1
        if b:myLang>=len(g:myLangList) | let b:myLang=0 | endif
        if b:myLang==0
            setlocal nospell
        else
            execute "setlocal spell spelllang=".get(g:myLangList, b:myLang)
        endif
    echo "spell checking language:" g:myLangList[b:myLang]
endfunction
nnoremap <silent> <F4> :call ToggleSpell()<CR>


function RangerExplorer()
    exec "silent !ranger --choosefile=/tmp/vim_ranger_current_file " . system('echo "' . expand("%:p:h") . '" | sed -E "s/\ /\\\ /g"')
    if filereadable('/tmp/vim_ranger_current_file')
      exec 'edit ' . system('cat /tmp/vim_ranger_current_file | sed -E "s/\ /\\\ /g"')
      call system('rm /tmp/vim_ranger_current_file')
  endif
redraw!
endfun

map <Leader>r :call RangerExplorer()<CR>




