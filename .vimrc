syntax on

set background=dark

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete"
set wildmenu

filetype plugin on

"nnoremap <C-f> "xyiw:exe "grep --color -rn ".@x." ."<CR>
"nnoremap <C-f> :exe '!grep --color --exclude-from=.gitignore -rn ' . shellescape(expand('<cfile>'), 1) . " . "
"nnoremap <C-f> "xyiw:grep -rn --exclude=tags ".@x." ."

command! -nargs=+ Grep execute 'silent grep! -I -r -n --exclude tags . -e <args>' | copen | execute 'silent /<args>'
nnoremap <C-f> :Grep <c-r>=expand("<cword>")<cr><cr>

" Create the `tags` file (may need to install ctags first)
" sudo apt-get install universal-ctags
command! MakeTags !ctags -R .
" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
"let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" line num
set nu

" highlight ending spaces
highlight ExtraWhitespace ctermbg=DarkBlue
call matchadd('ExtraWhitespace', '\s\+$')
" highlight 81th char
highlight OverLength ctermbg=DarkRed ctermfg=White
call matchadd('OverLength', '\%81v.')

" show existing tab with 2 spaces width
set softtabstop=2
set tabstop=2
" when indenting with '>' or '<Tab>', use 2 spaces width
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
" smartindent
"set smartindent
set smarttab

" keep selection on (un)indent with < and >
vmap > >gv
vmap < <gv
" keep selection on (un)indent with <Tab> and <S-Tab>
vmap <Tab> >gv
vmap <S-TAB> <gv
" keep selection on delete
vmap x xgv
" visual insertion
vmap i I
" visual append
vmap a A

" tab shortcuts
nnoremap tt  :tabedit .<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>

" set markdown textwith to 80 (:gq to rewrap)
au BufRead,BufNewFile *.md setlocal textwidth=80

" Emoji shortcuts
ab :ambulance: 🚑
ab :blood: 🩸 
ab :bomb: 💣
ab :book: 📖
ab :bug: 🐛
ab :bulb: 💡
ab :computer: 💻
ab :construction: 🚧
ab :elephant: 🐘
ab :email: 📧
ab :gear: ⚙️ 
ab :info: 🛈
ab :label: 🏷️
ab :link: 🔗
ab :memo: 📝
ab :ninja: 🥷
ab :nut_and_bolt: 🔩
ab :package: 📦
ab :pencil: 📝
ab :pill: 💊
ab :point_right: 👉
ab :pushpin: 📌
ab :recycle: ♻️
ab :rocket: 🚀
ab :shell: 🐚
ab :snake: 🐍
ab :telephone: 📞
ab :test_tube: 🧪
ab :up: 🆙
ab :vampire: 🧛
ab :warning: ⚠
ab :whale: 🐋
ab :white_check_mark: ✅
ab :wrench: 🔧
ab :yarn: 🧶
