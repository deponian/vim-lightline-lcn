function! lightline#lcn#error() abort
  if !exists(":LanguageClientStart")
    return ''
  endif
  let num = LanguageClient#statusLineDiagnosticsCounts()['E']
  return num == 0 ? '' : printf('E:%d', num)
endfunction

function! lightline#lcn#warning() abort
  if !exists(":LanguageClientStart")
    return ''
  endif
  let num = LanguageClient#statusLineDiagnosticsCounts()['W']
  return num == 0 ? '' : printf('W:%d', num)
endfunction

function! lightline#lcn#info() abort
  if !exists(":LanguageClientStart")
    return ''
  endif
  let num = LanguageClient#statusLineDiagnosticsCounts()['I']
  return num == 0 ? '' : printf('I:%d', num)
endfunction

function! lightline#lcn#hint() abort
  if !exists(":LanguageClientStart")
    return ''
  endif
  let num = LanguageClient#statusLineDiagnosticsCounts()['H']
  return num == 0 ? '' : printf('H:%d', num)
endfunction
