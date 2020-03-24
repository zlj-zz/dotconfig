"                       _
" _ __   ___  _____   _(_)_ __ ___
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \
"| | | |  __/ (_) \ V /| | | | | | |
"|_| |_|\___|\___/ \_/ |_|_| |_| |_|
" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" ===
" === Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
" ===
"let has_machine_specific_file = 1
"if empty(glob('~/.config/nvim/_machine_specific.vim'))
"    let has_machine_specific_file = 0
"    silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
"endif
"source ~/.config/nvim/_machine_specific.vim
" ====================
" ===== [config] =====
" ====================
" === basic Set =============================={{{
set nocompatible  " close vi compatibility mode
syntax on
filetype on  " open file classic check
filetype plugin indent on  " turn on auto-completion
set completeopt=longest,menu
filetype indent on  "针对不同的文件类型采用不同的缩进格式
filetype plugin on  " allow plugin

set encoding=utf-8  " set coding is utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set pyxversion=3
set autoread
" ======= basic formant settings ==============
" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
set cursorline           " highlight current line
set number               " show line number
"set ruler                " show ruler
set syntax=on            " turn on syntax highlight
" auto identation ===========
set autoindent
set cindent  " same ident with pre line, also can identify braces
" --------------------------------------------
set wrap           " auto wrap
set ts=4           " Tab's width
set softtabstop=4  " INSERT ident length 
set shiftwidth=4   " ident length
set expandtab      " tab replace black space
set showmatch      " bracket highlight
set matchtime=2    " bracket match highlight time(0.2s)
set wildmenu       " enable command-line completion in enhanced mode
set ignorecase     " ignore case when you search 
set hlsearch       " highlight search result
" code fold setting ===========================
set foldenable         " allow flod (help fold)
set foldmethod=marker  " option: [manual indent marker]
"au BufWinLeave * silent mkview
set showcmd        " show input message
set mouse=a  " mouse set
" allow backspace to upper line or lower line-
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set scrolloff=5  " reserve at least 5 lines when you scrol
" --------------------------------------------}}}
"=== status bar set ========================={{{
" set laststatus=2  " up show status row(1), always show status(2)
" function! Buf_total_num()
"     return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
" endfunction
" function! File_size(f)
"     let l:size = getfsize(expand(a:f))
"     if l:size == 0 || l:size == -1 || l:size == -2
"         return ''
"     endif
"     if l:size < 1024
"         return l:size.' bytes'
"     elseif l:size < 1024*1024
"         return printf('%.1f', l:size/1024.0).'k'
"     elseif l:size < 1024*1024*1024
"         return printf('%.1f', l:size/1024.0/1024.0) . 'm'
"     else
"         return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
"     endif
" endfunction
" set statusline=%<%1*[B-%n]%*                   " current buffer number
" set statusline+=%2*\ [%{File_size(@%)}]\ %*    " show file's size
" set statusline+=%3*\%<%.30F\                   " show file name and path
" set statusline+=%=%4*\%y%m%r%h%w\ %*           " show file classic and statut
" set statusline+=%5*\%{&ff}\[%{&fenc}]\ %*      " show file coding
" set statusline+=%6*\ row:%l\|%L/col:%c\/%*     " show current cursor's row and column
" set statusline+=%7*\%p%%\ %*                   " current percent
" set statusline+=%8*[ORZ:%{Buf_total_num()}]%*  " ORZ is an abbreviation for total
" hi User1 cterm=bold ctermfg=226 ctermbg=0
" hi User2 cterm=none ctermfg=250 ctermbg=0
" hi User3 cterm=none ctermfg=208 ctermbg=0
" hi User4 cterm=none ctermfg=33 ctermbg=0
" hi User5 cterm=none ctermfg=245 ctermbg=0
" hi User6 cterm=none ctermfg=245 ctermbg=0
" hi User7 cterm=none ctermfg=245 ctermbg=0
" hi User8 cterm=none ctermfg=245 ctermbg=0
" --------------------------------------------}}}
" 代码补充的键位替换
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"inoremap <expr><S-TAB> pumvisible() ? "\<c-p>" : "\<TAB>"

" === setTmp ================================={{{
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.config/nvim/tmp/undo,.
endif
" --------------------------------------------}}}

" when you open file, back to last edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" =============== ipython run ================
noremap ,i :sp<CR><C-w>j:term ipython<CR> i %run
" --------------------------------------------
" === Compile function ======================={{{
map <F9> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        set splitbelow
        exec "!g++ -std=c++11 % -Wall -o %<"
        :sp
        :res -15
        :term ./%<
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        set splitbelow
        :sp
        :term python3 %
    elseif &filetype == 'html'
        silent! exec "!".g:mkdp_browser." % &"
    elseif &filetype == 'markdown'
        exec "MarkdownPreview"
    elseif &filetype == 'tex'
        silent! exec "VimtexStop"
        silent! exec "VimtexCompile"
    elseif &filetype == 'dart'
        CocCommand flutter.run
    elseif &filetype == 'go'
        set splitbelow
        :sp
        :term go run .
    endif
endfunc
" --------------------------------------------}}}

" === Annotate function ======================{{{
" 设置注释快捷键
"map t' :call Note()<CR>
"func! Note()
    "if &filetype == 'python'
        "normal 0i#
    "elseif &filetype == 'sh'
        "normal 0i#
    "elseif &filetype == 'vim'
        "normal 0i"
    "elseif &filetype == 'plaintex'
        "normal 0i%
    "elseif &filetype == 'tex'
        "normal 0i%
    "elseif &filetype == 'c'
        "normal 0i//
    "elseif &filetype == 'cpp'
        "normal 0i//
    "elseif &filetype == 'java'
        "normal 0i//
    "endif
"endfunc
" 设置取消注释
"map o' 0df j
" --------------------------------------------}}}

" === Format function ========================{{{
"map ,f :call FormartSrc()<CR>

"定义FormartSrc()
"func FormartSrc()
    "exec "w"
    "if &filetype == 'c'
        "exec "!astyle --style=ansi --one-line=keep-statements -a --suffix=none %"
    "elseif &filetype == 'cpp' || &filetype == 'hpp'
        "exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    "elseif &filetype == 'perl'
        "exec "!astyle --style=gnu --suffix=none %"
    "elseif &filetype == 'py'||&filetype == 'python'
        "exec "r !autopep8 -i --aggressive %"
    "elseif &filetype == 'java'
        "exec "!astyle --style=java --suffix=none %"
    "elseif &filetype == 'jsp'
        "exec "!astyle --style=gnu --suffix=none %"
    "elseif &filetype == 'xml'
        "exec "!astyle --style=gnu --suffix=none %"
    "endif
    "exec "e! %"
"endfunc
" --------------------------------------------}}}

"let g:python_host_prog="/usr/bin/python2.7"
let g:python3_host_prog="/usr/bin/python3.8"
" === Widgets ================================{{{
"call plug#begin('~/.config/nvim/plugged')
call plug#begin()
Plug 'tiagofumo/dart-vim-flutter-layout'
Plug 'RRethy/vim-illuminate'
" ===
" === vim-illuminate
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl
Plug 'AndrewRadev/splitjoin.vim'
Plug 'KabbAmine/vCoolor.vim'
"Plug 'pechocrin/any-jump.vim'

" Pretty Dress
Plug 'theniceboy/eleline.vim'
Plug 'bling/vim-bufferline'
"Plug 'liuchengxu/space-vim-theme'
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'rakr/vim-one'
"Plug 'mhartington/oceanic-next'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'ajmwagar/vim-deus'
"Plug 'arzg/vim-colors-xcode'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
set t_Co=256  " open 256 color suppor
" ===
" === Dress up my vim
set termguicolors   " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set background=dark
"let ayucolor="mirage"
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"let g:one_allow_italics = 1
"color dracula
"color one
"color deus
color gruvbox
"let ayucolor="light"
"color ayu
"set background=light
"color xcodedark
hi NonText ctermfg=gray guifg=grey10
hi SpecialKey ctermfg=blue guifg=grey70
" ===
" === eleline.vim
let g:airline_powerline_fonts = 0
" let you can use fcitx in vim
Plug 'https://github.com/vim-scripts/fcitx.vim.git'


" ++++++++++++++++++++++++++++++++++++++++++++


" NerdTree, files tree to manage file
Plug 'scrooloose/nerdtree'
" Tagbar, easy read program, function bar
Plug 'majutsushi/tagbar'  " sudo pacman -S ctags
" Undo Tree, to see history
Plug 'mbbill/undotree'
"===
"=== NERDTree
map <F7> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowBookmarks=1
function! s:initVariable(var, value)
    if !exists(a:var)
        exec 'let ' . a:var . ' = ' . "'" . substitute(a:value, "'", "''", "g") . "'"
        return 1
    endif
    return 0
endfunction
call s:initVariable("g:NERDTreeMapOpenSplit", "h")
"===
"=== Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_sort=0  " close auto sort
let g:tagbar_width=30  " set window width
"let g:tagbar_autopreview = 1
let g:tagbar_autofocus = 1
"autocmd BufReadPost *.py,*.cpp,*.c,*.java,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  " where file auto open the window
function! s:init_var(var, value) abort
    if !exists('g:tagbar_' . a:var)
        execute 'let g:tagbar_' . a:var . ' = ' . string(a:value)
    endif
endfunction
function! s:setup_keymaps() abort
    let keymaps = [
        \ ['togglecaseinsensitive', ''],
    \ ]
    for [map, key] in keymaps
        call s:init_var('map_' . map, key)
        unlet key
    endfor
endfunction
call s:setup_keymaps()
" ===
" === Undotree
noremap <F6> :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
    nmap <buffer> u <plug>UndotreeNextState
    nmap <buffer> e <plug>UndotreePreviousState
    nmap <buffer> U 5<plug>UndotreeNextState
    nmap <buffer> E 5<plug>UndotreePreviousState
endfunc


" ++++++++++++++++++++++++++++++++++++++++++++


Plug 'junegunn/vim-easy-align' " gaip= to align the = in paragraph, 
" ===
" === vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" Formatter
Plug 'Chiel92/vim-autoformat'
" ===
" === AutoFormat
nnoremap \f :Autoformat<CR>
" NerdCommenter
Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line
" Genreal Highlighter
Plug 'jaxbot/semantic-highlight.vim'
" show indentation line
Plug 'Yggdroot/indentLine'
" ===
"=== indentLine
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 238
let g:indentLine_char = '|'
Plug 'luochen1990/rainbow'
" ===
" === rainbow
let g:rainbow_active = 1


" ++++++++++++++++++++++++++++++++++++++++++++


" File navigation
Plug 'junegunn/fzf.vim'
" ===
" === FZF (sudo pacman -S fzf)
noremap <C-f> :FZF<CR>
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
" ===
" === rnvimr
let g:rnvimr_ex_enable = 1
let g:rnvimr_pick_enable = 1
nnoremap <silent> R :RnvimrSync<CR>:RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': &columns,
            \ 'height': &lines,
            \ 'col': 0,
            \ 'row': 0,
            \ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]


" ++++++++++++++++++++++++++++++++++++++++++++


" Find & Replace 
" Press SPACE f r to search in cwd.
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
" ===
" === Far.vim, batch modifying
nnoremap <LEADER>f :F  **/*<left><left><left><left><left>
let g:far#mapping = {
            \ "replace_undo" : ["l"],
            \ }

Plug 'osyo-manga/vim-anzu'
" ===
" === Anzu
set statusline=%{anzu#search_status()}
nnoremap = n
nnoremap - N


" ++++++++++++++++++++++++++++++++++++++++++++


" For general writing-工作无忧
Plug 'junegunn/goyo.vim'
" === goyo
map <LEADER>gy :Goyo<CR>

" ++++++++++++++++++++++++++++++++++++++++++++


" Vim Applications-日历
Plug 'itchyny/calendar.vim'
" ===
" === vim-calendar
noremap \c :Calendar -position=here<CR> " 打开日历
noremap \\ :Calendar -view=clock -position=here<CR> " 打开时钟
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup calendar-mappings
	autocmd!
	" diamond cursor
	autocmd FileType calendar nmap <buffer> i <Plug>(calendar_up)
	autocmd FileType calendar nmap <buffer> j <Plug>(calendar_left)
	autocmd FileType calendar nmap <buffer> k <Plug>(calendar_down)
	autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
	autocmd FileType calendar nmap <buffer> <c-i> <Plug>(calendar_move_up)
	autocmd FileType calendar nmap <buffer> <c-j> <Plug>(calendar_move_left)
	autocmd FileType calendar nmap <buffer> <c-k> <Plug>(calendar_move_down)
	autocmd FileType calendar nmap <buffer> <c-l> <Plug>(calendar_move_right)
	autocmd FileType calendar nmap <buffer> a <Plug>(calendar_start_insert)
	autocmd FileType calendar nmap <buffer> a <Plug>(calendar_start_insert_head)
	" unmap <C-n>, <C-p> for other plugins
	autocmd FileType calendar nunmap <buffer> <C-n>
	autocmd FileType calendar nunmap <buffer> <C-p>
augroup END


" +++++++++++++++++++++++++++++++++++++++++++++


" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " install [npm] [yarn]
Plug 'wellle/tmux-complete.vim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'  " deoplete 函数库
" ===
" === coc
" fix the most annoying bug that coc has
"silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
"set signcolumn=no  " no side bar
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-flutter', 'coc-java']
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)
" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-o> coc#refresh()
" Open up coc-commands
nnoremap <c-c> :CocCommand<CR>
" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap kf <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap kf <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
" GoTo code navigation. 代码导航
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap tt :CocCommand explorer<CR>
" coc-translator 翻译
nmap ts <Plug>(coc-translator-p)winids
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Python
Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" === jsx
let g:vim_jsx_pretty_colorful_config = 1
Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }


" ++++++++++++++++++++++++++++++++++++++++++++


" Go
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }
" ===
" === vim-go
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0


" ++++++++++++++++++++++++++++++++++++++++++++


" Editor Enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
" ===
" === vim-visual-multi
"let g:VM_theme             = 'iceblue'
"let g:VM_default_mappings = 0
let g:VM_leader = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps = {}
let g:VM_custom_motions  = {'j': 'h', 'l': 'l', 'i': 'k', 'k': 'j', '#': '0', '$': '$'}
let g:VM_maps['i']         = 'k'
let g:VM_maps['I']         = 'K'
let g:VM_maps['Find Under']         = '<C-k>'
let g:VM_maps['Find Subword Under'] = '<C-k>'
let g:VM_maps['Find Next']         = ''
let g:VM_maps['Find Prev']         = ''
let g:VM_maps['Remove Region'] = 'q'
let g:VM_maps['Skip Region'] = ''
let g:VM_maps["Undo"]      = 'l'
let g:VM_maps["Redo"]      = '<C-r>'
Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line
Plug 'AndrewRadev/switch.vim' " gs to switch
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
Plug 'junegunn/vim-after-object' " da= to delete what's after =
" ===
" === vim-after-object
autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
Plug 'easymotion/vim-easymotion'
" ===
" === vim-easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 0
let g:EasyMotion_smartcase = 1
map ' <Plug>(easymotion-bd-f)
nmap ' <Plug>(easymotion-bd-f)
"map E <Plug>(easymotion-j)
"map U <Plug>(easymotion-k)
"nmap f <Plug>(easymotion-overwin-f)
"map \; <Plug>(easymotion-prefix)
"nmap ' <Plug>(easymotion-overwin-f2)
"map 'l <Plug>(easymotion-bd-jk)
"nmap 'l <Plug>(easymotion-overwin-line)
"map  'w <Plug>(easymotion-bd-w)
"nmap 'w <Plug>(easymotion-overwin-w)
Plug 'Konfekt/FastFold'
" ===
" === fastfold f
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'ze', 'zu']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
Plug 'svermeulen/vim-subversive'
" ===
" === vim-subversive
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
" Other visual enhancement
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'mg979/vim-xtabline'
" ===
" === xtabline
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
noremap to :XTabCycleMode<CR>
noremap \p :XTabInfo<CR> 
Plug 'wincent/terminus'
" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'roxma/nvim-yarp'

" ++++++++++++++++++++++++++++++++++++++++++++


" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
Plug 'theniceboy/bullets.vim'
" ===
" Snippets
source ~/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell
" ===
" === MarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1
			\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_browser = 'firefox'
" ===
" === vim-table-mode
noremap <LEADER>tm :TableModeToggle<CR>
"let g:table_mode_disable_mappings = 1
let g:table_mode_cell_text_object_i_map = 'k<Bar>'
 


" ++++++++++++++++++++++++++++++++++++++++++++
" Swift
Plug 'keith/swift.vim'

call plug#end()
" --------------------------------------------}}}
" experimental
set lazyredraw

" === make file header ======================{{{
"autocmd BufNewFile * call SetTitle()
nmap tit :call SetTitle()<CR>
func! SetTitle()
    if &filetype == 'python'
        call setline(1,"#!/usr/bin/env python3")
        call append(line("."),"# -*- coding:UTF-8 -*-")
        call append(line(".")+1, "__author__ = 'zachary'")
        call append(line(".")+2, '"""')
        call append(line(".")+3, "File Name: ".expand("%"))
        call append(line(".")+4, "Created Time: ".strftime("%c"))
        call append(line(".")+5, "Last Modified: ")
        call append(line(".")+6, '"""')
        call append(line(".")+7, "<++>")
    elseif &filetype == 'c'
        call setline(1, "#include <stdio.h>")
        call append(line("."), "/************************************************************")
        call append(line(".")+1, "Copyright(C) 1997-".strftime("%Y").", Tech. Co.,Ltd.")
        call append(line(".")+2, "FileName: ".expand("%"))
        call append(line(".")+3, "Author: zachary")
        call append(line(".")+4, "Date: ".strftime("%c"))
        call append(line(".")+5, "Last Modified: ")
        call append(line(".")+6, "Version: <++>")
        call append(line(".")+7, "Description: <++>")
        call append(line(".")+8, "***********************************************************/")
        call append(line(".")+9, "<++>")
    elseif &filetype == 'java'
        call setline(1, "/**")
        call append(line("."), "* @description <++>")
        call append(line(".")+1, "* @author zachary")
        call append(line(".")+2, "* @version <++>")
        call append(line(".")+3, "* @date ".strftime("%c"))
        call append(line(".")+4, "*/")
        call append(line(".")+5, "<++>")
    elseif &filetype == "sh"
        call setline(1, "\#!/bin/bash")
        call append(line("."), "")
        call append(line(".")+1, "\#########################################################################")
        call append(line(".")+2, "\# File Name: ".expand("%"))
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\# Author: zachary")
        call append(line(".")+5, "\# Last Modified: ")
        call append(line(".")+6, "\# Description: <++>")
        call append(line(".")+7, "\#########################################################################")
        call append(line(".")+8, "<++>")
    elseif &filetype == 'plaintex'
        call setline(1,"% -*- coding:UTF-8 -*-")
        call append(line("."),"% #########################################################################")
        call append(line(".")+1, "% File Name: ".expand("%"))
        call append(line(".")+2, "% Author: stubborn vegeta")
        call append(line(".")+3, "% Created Time: ".strftime("%c"))
        call append(line(".")+4, "% #########################################################################")
        call append(line(".")+5, "\\documentclass[UTF8]{<++>}")
        call append(line(".")+6, "\\usepackage{graphicx}")
        call append(line(".")+7, "\\usepackage{booktabs}")
        call append(line(".")+8, "\\usepackage{geometry}")
        call append(line(".")+9, "\\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}")
        call append(line(".")+10, "\\pagestyle{plain}")
        call append(line(".")+11, "\\begin{document}")
        call append(line(".")+12, "<++>")
        call append(line(".")+13, "\\end{document}")
    elseif &filetype == 'tex'
        call setline(1,"% -*- coding:UTF-8 -*-")
        call append(line("."),"% #########################################################################")
        call append(line(".")+1, "% File Name: ".expand("%"))
        call append(line(".")+2, "% Author: stubborn vegeta")
        call append(line(".")+3, "% Created Time: ".strftime("%c"))
        call append(line(".")+4, "% #########################################################################")
        call append(line(".")+5, "\\documentclass[UTF8]{<++>}")
        call append(line(".")+6, "\\usepackage{graphicx}")
        call append(line(".")+7, "\\usepackage{booktabs}")
        call append(line(".")+8, "\\usepackage{geometry}")
        call append(line(".")+9, "\\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}")
        call append(line(".")+10, "\\pagestyle{plain}")
        call append(line(".")+11, "\\begin{document}")
        call append(line(".")+12, "<++>")
        call append(line(".")+13, "\\end{document}")
    endif
    "     normal G
endfunc
" --------------------------------------------}}}

" === Modify datetime ======================={{{  
function SetLastModifiedTime(lineno)  
    let modif_time = strftime("%Y-%m-%d %H:%M:%S")
    if a:lineno == "-1"  
            let line = getline(7)  
    else  
            let line = getline(a:lineno)  
    endif
    if line =~ '\sLast Modified:'
            let line = strpart(line, 0, stridx(line, ":")) . ": " . modif_time
    endif  
    if a:lineno == "-1"  
            call setline(7, line)  
    else  
            call append(a:lineno, line)  
    endif  
endfunc
" map the SetLastModifiedTime command automatically  
noremap upd :call SetLastModifiedTime(-1)<CR>
" -------------------------------------------}}}

 " === KEY MAP ================================{{{
" set leader is <space>
let mapleader=" "
"map <LEADER>    :retab!<CR>
" cancel the highlight search
nnoremap <LEADER><CR> :nohlsearch<CR>


" ===
" === file option
" Disable the default s key
map s <nop>
" save
map S :w<CR>
" quit
map Q :q<CR>
" make Y to copy till the end of the line
"nnoremap Y y$
" Copy to system clipboard
vnoremap Y "+y
" Indentation
nnoremap < <<
nnoremap > >>
" select all
map <C-a> ggVG
" replace ESC
"inoremap <LEADER>[ <ESC>


"===
"=== cursor movement
"===
"     ^
"     i
" < j   l >
"     k
"     v
" new cursor movment
noremap <silent> i k
noremap <silent> j h
noremap <silent> J H
noremap <silent> k j
"noremap <silent> l l
" new INSERT key
noremap r i
noremap R I
"  faster navigation 
noremap <silent> I 7k
noremap <silent> K 7j
" Ctrl + U or E will move up/down the view port without moving the cursor
nnoremap <C-L> 5<C-y>
nnoremap <C-J> 5<C-e>
" Insert and Command Mode Cursor Movement
noremap! <C-a> <Home>
noremap! <C-s> <End>
noremap! <C-i> <Up>
noremap! <C-k> <Down>
noremap! <C-j> <Left>
noremap! <C-l> <Right>
noremap! <M-j> <S-Left>
noremap! <M-l> <S-Right>
" Disable the default t key
noremap t <nop>
" Use t + arrow keys for moving the cursor around windows
noremap tl <C-w>l
noremap ti <C-w>k
noremap tk <C-w>j
noremap tj <C-w>h
" jump to sentence tail
noremap # 0


"===
"=== windwo management
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
map si :set nosplitbelow<CR>:split<CR>:e 
map sk :set splitbelow<CR>:split<CR>:e 
map sj :set nosplitright<CR>:vsplit<CR>:e 
map sl :set splitright<CR>:vsplit<CR>:e 
" Resize splits with arrow keys
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
" Disable the default c key
"map c <nop>
" Place the two screens up and down
noremap ch <C-w>t<C-w>K
" Place the two screens side by side
noremap cv <C-w>t<C-w>H


"===
"=== tabe management
" 新建标签页, w filepath_and_name
map <c-t> :tabe<CR>
" 前一标签页
map t- :-tabnext<CR>
" 后一标签页
map t= :+tabnext<CR>
" 上一个buffer
map b- :bp<CR>
" 下一个buffer
map b= :bn<CR>


"===
"=== other
" Open the vimrc file anytime
nnoremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
" Opening a terminal window
nnoremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
tnoremap <C-N> <C-\><C-N>
" Open up pudb, a python debug,(pip install --user pudb)
noremap <c-d> :tab sp<CR>:term python3 -m pudb %<CR>
" find two same word
nmap <LEADER>fd /\(\<\w\+\>\)\_s*\1
" Press space twice to jump to the next ':' and edit it
nnoremap <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l
" Spelling Check with <space>sc
nnoremap <LEADER>sc :set spell!<CR>
" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h
" resource neovim config
map rc :source $MYVIMRC<CR>

"imap <c-j> <esc>f"a
" --------------------------------------------}}}
 
" ===
" === Necessary Commands to Execute
" ===
hi Normal ctermfg=252 ctermbg=none  " let bg transparent
exec "nohlsearch"


" Open the _machine_specific.vim file if it has just been created
" if has_machine_specific_file == 0
"   exec "e ~/.config/nvim/_machine_specific.vim"
" endif
