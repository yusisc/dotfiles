set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" What's a quick way to comment/uncomment lines in Vim? - Stack Overflow
"" https://stackoverflow.com/questions/1676632/whats-a-quick-way-to-comment-uncomment-lines-in-vim/"34445341
"" Commenting blocks of code.
"autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
"autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"autocmd FileType conf,fstab       let b:comment_leader = '# '
"autocmd FileType tex              let b:comment_leader = '% '
"autocmd FileType mail             let b:comment_leader = '> '
"autocmd FileType vim              let b:comment_leader = '" '
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
""""""""""""""""""""""
" noremap ,cc :s/^\(\t*\)\(.*\)/\1\/\/ \2<CR>
" noremap ,cc :s/^\(\t*\)\(.\{-1,}\)\($\)/\1\/\/ \2<CR>
" autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
" autocmd FileType sh,ruby,python   let b:comment_leader = '# '
" autocmd FileType conf,fstab       let b:comment_leader = '# '
" autocmd FileType tex              let b:comment_leader = '% '
" autocmd FileType mail             let b:comment_leader = '> '
" autocmd FileType vim              let b:comment_leader = '" '
" noremap ,cc :s/^\(\t*\)\(.\{-1,}\)$/\1<C-R>=escape(b:comment_leader,'\/')<CR>\2/<CR>
" noremap ,cu :s/^\(\t*\)<C-R>=escape(b:comment_leader,'\/')<CR>\(.\{-1,}\)$/\1\2<CR>
noremap ,cc :s/^\(\t*\)\(.\{-1,}\)$/\1\/\/\2<CR>
noremap ,cu :s/^\(\t*\)\/\/\(.*\)$/\1\2<CR>
noremap ,v <S-v>

"" Moving lines up or down | Vim Tips Wiki | FANDOM powered by Wikia
"" https://vim.fandom.com/wiki/Moving_lines_up_or_down
" move line up & down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" search the word
nnoremap ,ss yiwb/<C-R>0<CR>
nnoremap ,sr cgn<C-R>0
nnoremap ,2f ciwfloat(<C-R>")<Esc>
nnoremap ,2i ciwint(<C-R>")<Esc>
nnoremap ,rr @@

nnoremap ci, T,ct,
nnoremap ,sa ggVG
nnoremap ]] /\(\w \)*\w(.*)\n\s*{<CR>
nnoremap [[ /\(\w \)*\w(.*)\n\s*{<CR>NN


