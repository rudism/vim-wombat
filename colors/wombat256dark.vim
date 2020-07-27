" Templated Wombat color scheme
" Original theme by Lars Nielsen
" Some things taken from morhetz/gruvbox

" Initialization: {{{

set background=dark

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" }}}
" Pallette: {{{

let s:wombat = {}
let s:wombat.bold='bold'
if has('gui_running') || $TERM_ITALICS == 'true'
  let s:wombat.italic='italic'
else
  let s:wombat.italic='none'
endif
let s:wombat.none=['NONE', 'NONE']
let s:wombat.black=['#242424', 234]
let s:wombat.lightblack=['#32322f', 236]
let s:wombat.lighterblack=['#444444', 238]
let s:wombat.darkblack=['#080808', 232]
let s:wombat.light=['#c3c6ca', 251]
let s:wombat.lighter=['#e3e0d7', 252]
let s:wombat.blue=['#88b8f6', 111]
let s:wombat.green=['#cae982', 192]
let s:wombat.lightgreen=['#d4d987', 186]
let s:wombat.darkgreen=['#95e454', 113]
let s:wombat.lightyellow=['#ffffd7', 230]
let s:wombat.yellow=['#eadead', 229]
let s:wombat.red=['#ff5f55', 203]
let s:wombat.lightred=['#e5796d', 173]
let s:wombat.darkred=['#ff2026', 196]
let s:wombat.gray=['#9c998e', 246]
let s:wombat.lightgray=['#a0a8b0', 103]
let s:wombat.darkgray=['#857b6f', 241]
let s:wombat.darkergray=['#554d4b', 239]
let s:wombat.pink=['#d787ff', 177]
let s:wombat.darkpink=['#73186e', 53]
let s:wombat.purple=['#2a0d6a', 17]
let s:wombat.lightpurple=['#3e3969', 60]
let s:wombat.darkpurple=['#382a37', 237]

" }}}
" Highlight Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  let fg = a:fg

  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:wombat.none
  endif

  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'none'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr, 'cterm=' . emstr
        \ ]

  execute join(histring, ' ')
endfunction

" }}}
" Apply Colors: {{{

call s:HL('Normal', s:wombat.lighter, s:wombat.black)
call s:HL('Cursor', s:wombat.black, s:wombat.light)
call s:HL('Visual', s:wombat.light, s:wombat.darkergray)
call s:HL('VisualNOS', s:wombat.light, s:wombat.darkblack)
call s:HL('Search', s:wombat.pink, s:wombat.lighterblack)
call s:HL('Folded', s:wombat.lightgray, s:wombat.darkblack)
call s:HL('Title', s:wombat.lightyellow, s:wombat.none, s:wombat.bold)
call s:HL('StatusLine', s:wombat.lightyellow, s:wombat.lighterblack)
call s:HL('VertSplit', s:wombat.lighterblack, s:wombat.lighterblack)
call s:HL('StatusLineNC', s:wombat.darkgray, s:wombat.lighterblack)
call s:HL('LineNr', s:wombat.darkgray, s:wombat.darkblack)
call s:HL('SignColumn', s:wombat.none, s:wombat.darkblack)
call s:HL('SpecialKey', s:wombat.darkgray, s:wombat.black)
call s:HL('WarningMsg', s:wombat.red)
call s:HL('ErrorMsg', s:wombat.darkred)

if version >= 700
  call s:HL('CursorLine', s:wombat.none, s:wombat.lightblack)
  call s:HL('MatchParen', s:wombat.yellow, s:wombat.darkgray)
  call s:HL('Pmenu', s:wombat.lightyellow, s:wombat.lighterblack)
  call s:HL('PmenuSel', s:wombat.darkblack, s:wombat.green)

  hi! link CursorLineNr CursorLine
endif

call s:HL('Keyword', s:wombat.blue)
call s:HL('Statement', s:wombat.blue)
call s:HL('Constant', s:wombat.lightred)
call s:HL('Number', s:wombat.lightred)
call s:HL('PreProc', s:wombat.lightred)
call s:HL('Function', s:wombat.green)
call s:HL('Identifier', s:wombat.green)
call s:HL('Type', s:wombat.lightgreen)
call s:HL('Special', s:wombat.yellow)
call s:HL('String', s:wombat.darkgreen, s:wombat.none, s:wombat.italic)
call s:HL('Comment', s:wombat.gray, s:wombat.none, s:wombat.italic)
call s:HL('Todo', s:wombat.darkgray, s:wombat.lightyellow, s:wombat.bold)
call s:HL('NonText', s:wombat.darkgray, s:wombat.black)

call s:HL('DiffAdd', s:wombat.none, s:wombat.purple)
call s:HL('DiffDelete', s:wombat.none, s:wombat.lightpurple)
call s:HL('DiffText', s:wombat.none, s:wombat.darkpink)
call s:HL('DiffChange', s:wombat.none, s:wombat.darkpurple)

hi! link SignColumn LineNr
hi! link FoldColumn Folded
hi! link CursorColumn CursorLine
hi! link IncSearch Search

" }}}

let g:airline_theme='wombat'
