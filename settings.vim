"Here come your .vimrc settings
map <C-r> :Regrep<CR>
map <F2>  :NERDTreeToggle<CR>
map <F3>  :ConqueTermSplit bash<CR>
map <F4>  :ConqueTermVSplit python<CR>
map <C-b> :BufExplorer<CR>

set t_Co=256

colorscheme desert256 

autocmd BufLeave,FocusLost silent! wall

au BufRead,BufNewFile * let b:save_time = localtime()
	
au CursorHold * call UpdateFile()
	
let g:autosave_time = 1
	
" save if needed / update the save_time after the save
function! UpdateFile()
   if((localtime() - b:save_time) >= g:autosave_time)
         update
         let b:save_time = localtime()
   else
" just debugging info
         echo "[+] ". (localtime() - b:save_time) ."seconds have elapsed so far."
   endif
endfunction
                     	
au BufWritePre * let b:save_time = localtime()

syntax on

" Thats real OpenStack style patch
let g:pymode_lint_ignore="W802 undefined name \"_\",W806 local variable \"e\" is assigned to but never used"


