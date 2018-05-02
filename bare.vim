" Bare
" Author:       Michael Bruce <http://michaelbruce.online/>
" vim:set ts=2 sts=2 sw=2 expandtab:

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bare"

let s:col = {
      \ 'fg': 7,
      \ 'bg': 0,
      \ 'dark': 248,
      \ 'darker': 243,
      \ 'darkest': 239,
      \ 'error': 1
      \ }

function! s:setHighlight(name, fg, bg, display)
  exec 'hi ' . a:name . ' ' .
        \ 'ctermbg=' . a:bg . ' ' .
        \ 'ctermfg=' . a:fg . ' ' .
        \ 'cterm=' . a:display
endfunction

call s:setHighlight('Normal', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('Number', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('Function', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('Statement', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('String', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('Identifier', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('Preproc', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('Type', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('Comment', s:col['dark'], s:col['bg'], 'NONE')
call s:setHighlight('TODO', s:col['error'], s:col['bg'], 'NONE')
call s:setHighlight('StatusLine', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('StatusLineNC', s:col['dark'], s:col['bg'], 'NONE')
call s:setHighlight('VertSplit', s:col['dark'], s:col['bg'], 'NONE')
call s:setHighlight('Search', s:col['dark'], s:col['bg'], 'NONE')
call s:setHighlight('LineNr', s:col['dark'], s:col['bg'], 'NONE')
call s:setHighlight('CursorLine', 'NONE', s:col['darkest'], 'NONE')
call s:setHighlight('Visual', s:col['bg'], s:col['fg'], 'NONE')
call s:setHighlight('Error', s:col['error'], s:col['bg'], 'NONE')
call s:setHighlight('ErrorMsg', s:col['error'], s:col['bg'], 'NONE')
call s:setHighlight('WarningMsg', s:col['error'], s:col['bg'], 'NONE')
call s:setHighlight('NonText', s:col['dark'], s:col['bg'], 'NONE')
call s:setHighlight('Delimiter', s:col['dark'], s:col['bg'], 'NONE')
call s:setHighlight('MatchParen', s:col['fg'], s:col['darker'], 'NONE')
call s:setHighlight('Operator', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('diffAdded', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('diffChange', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('diffRemoved', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('diffDelete', s:col['fg'], s:col['bg'], 'NONE')
call s:setHighlight('PMenu', s:col['dark'], s:col['darkest'], 'NONE')
call s:setHighlight('PMenuSel', s:col['fg'], s:col['darkest'], 'NONE')
call s:setHighlight('User1', s:col['dark'], s:col['bg'], 'NONE')
set stl=--\ %1*%F%m%r%h%w%*\ %=\ %y\ -\ [%l,%c]\ [%L,%p%%] showtabline=1 tags=./.tags;
set fillchars=stlnc:\-,stl:\-,vert:\|
