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
let s:wombat.background=['#242424', 233]
let s:wombat.altbackground=['#444444', 238]
let s:wombat.altbackground2=['#080808', 232]
let s:wombat.foreground=['#e3e0d7', 253]
let s:wombat.altforeground=['#eadead', 187]
let s:wombat.altforeground2=['#ffffd7', 230]
let s:wombat.dimforeground=['#857b6f', 241]
let s:wombat.cursorbg=['#32322f', 236]
let s:wombat.highlight=['#c3c6ca', 251]
let s:wombat.highlight2=['#554d4b', 239]
let s:wombat.blue=['#88b8f6', 111]
let s:wombat.yellow=['#cae682', 186]
let s:wombat.red=['#e5796d', 173]
let s:wombat.green=['#95e454', 113]
let s:wombat.pink=['#d787ff', 177]
let s:wombat.warning=['#ff5f55', 203]
let s:wombat.error=['#ff2026', 196]
let s:wombat.comment=['#9c998e', 246]
let s:wombat.altcomment=['#a0a8b0', 103]

let s:wombat.difftext=['#0a448e', 24]
let s:wombat.diffadd=['#5d7718', 58]
let s:wombat.diffdelete=['#721d14', 52]
let s:wombat.diffchange=['#396b11', 64]

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

call s:HL('Normal', s:wombat.foreground, s:wombat.background)
call s:HL('Cursor', s:wombat.background, s:wombat.highlight)
call s:HL('Visual', s:wombat.highlight, s:wombat.highlight2)
call s:HL('VisualNOS', s:wombat.foreground, s:wombat.altbackground2)
call s:HL('Search', s:wombat.pink, s:wombat.altbackground)
call s:HL('Folded', s:wombat.altcomment, s:wombat.altbackground2)
call s:HL('Title', s:wombat.altforeground2, s:wombat.none, s:wombat.bold)
call s:HL('StatusLine', s:wombat.altforeground2, s:wombat.altbackground)
call s:HL('VertSplit', s:wombat.altbackground, s:wombat.altbackground)
call s:HL('StatusLineNC', s:wombat.comment, s:wombat.altbackground)
call s:HL('LineNr', s:wombat.dimforeground, s:wombat.altbackground2)
call s:HL('SignColumn', s:wombat.none, s:wombat.altbackground2)
call s:HL('SpecialKey', s:wombat.dimforeground, s:wombat.background)
call s:HL('WarningMsg', s:wombat.warning)
call s:HL('ErrorMsg', s:wombat.error)

if version >= 700
  call s:HL('CursorLine', s:wombat.none, s:wombat.cursorbg)
  call s:HL('MatchParen', s:wombat.highlight2, s:wombat.altforeground)
  call s:HL('Pmenu', s:wombat.altforeground2, s:wombat.altbackground)
  call s:HL('PmenuSel', s:wombat.altbackground2, s:wombat.yellow)

  hi! link CursorLineNr CursorLine
endif

call s:HL('Keyword', s:wombat.blue)
call s:HL('Statement', s:wombat.blue)
call s:HL('Constant', s:wombat.red)
call s:HL('Number', s:wombat.red)
call s:HL('PreProc', s:wombat.red)
call s:HL('Function', s:wombat.yellow)
call s:HL('Identifier', s:wombat.yellow)
call s:HL('Type', s:wombat.yellow)
call s:HL('Special', s:wombat.altforeground)
call s:HL('String', s:wombat.green, s:wombat.none, s:wombat.italic)
call s:HL('Comment', s:wombat.comment, s:wombat.none, s:wombat.italic)
call s:HL('Todo', s:wombat.dimforeground, s:wombat.altforeground2, s:wombat.bold)
call s:HL('NonText', s:wombat.dimforeground, s:wombat.background)

call s:HL('DiffAdd', s:wombat.none, s:wombat.diffadd)
call s:HL('DiffDelete', s:wombat.none, s:wombat.diffdelete)
call s:HL('DiffText', s:wombat.none, s:wombat.difftext)
call s:HL('DiffChange', s:wombat.none, s:wombat.diffchange)

hi! link SignColumn LineNr
hi! link FoldColumn Folded
hi! link CursorColumn CursorLine
hi! link IncSearch Search
hi! link Directory Keyword

" }}}

if !exists('g:airline_theme')
  let g:airline_theme='wombat'
endif
