sy off
set cp ai et ic ts=4 sw=4
map! jk 

" ==== Command history ===============================================
" Opens file with history of ex commands.  Compose a new command or
" edit an old one, then execute it by hitting ENTER in command mode.
map gg :w:e ~/.exhistory:map  :unmap :w:y z:@z

" ==== Commenting ====================================================
" Default comment character: #
map!  #
" Change comment character
map g= :unmap! :map!  
" Comment out from 'm down (!) to current line.  Will only work for
" lines with same whitespace prefix as line 'm.  Use :s/// otherwise.
map gc mz'm0i "zyws:'m,'zs:^:"zPT^xhf:a& : "zd0x:@z
" Uncomment from 'm down (!) to current line
map gu :'m,.s: ::

" ==== Paragraph filling =============================================
map gq !}fmt -w70 -g70}
map gQ !}fmt -w70 -g70 -p\}

" ==== File navigation ===============================================
map gn :next
map gp :prev
map gr :rewind
map g  :e #

" ==== Git ===========================================================
map gd :!git diff %
map gD :!git diff
map ga :!git add -p %
map gA :!git add -p
map gC :!git commit -v

" ==== Customization =================================================
