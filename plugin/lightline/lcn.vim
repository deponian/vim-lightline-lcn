" lcn - LanguageClient-neovim
if exists('g:lightline#lcn#enabled')
	finish
endif
let g:lightline#lcn#enabled = 1

augroup lightline#lcn
	autocmd!
	autocmd User LanguageClientDiagnosticsChanged call lightline#update()
augroup END
