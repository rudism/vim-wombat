" Vim color file
" Original Maintainer:  Lars H. Nielsen (dengmao@gmail.com)
" Last Change:  2010-07-23
"
" Modified version of wombat for 256-color terminals by
"   David Liang (bmdavll@gmail.com)
" based on version by
"   Danila Bespalov (danila.bespalov@gmail.com)

set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let colors_name = "wombat256light"


" General colors
hi Normal guifg=#080808 guibg=#e3e0d7 guisp=#e3e0d7 gui=NONE ctermfg=232 ctermbg=254 cterm=NONE
hi Cursor guifg=#e3e0d7 guibg=#242424 guisp=#242424 gui=NONE ctermfg=254 ctermbg=235 cterm=NONE
hi Visual guifg=#c3c6ca guibg=#554d4b guisp=#554d4b gui=NONE ctermfg=251 ctermbg=240 cterm=NONE
hi VisualNOS guifg=#c3c6ca guibg=#303030 guisp=#303030 gui=NONE ctermfg=251 ctermbg=236 cterm=NONE
hi Search guifg=#080808 guibg=#d787ff guisp=#d787ff gui=NONE ctermfg=232 ctermbg=177 cterm=NONE
hi Folded guifg=#a0a8b0 guibg=#3a4046 guisp=#3a4046 gui=NONE ctermfg=103 ctermbg=238 cterm=NONE
hi Title guifg=#969600 guibg=NONE guisp=NONE gui=bold ctermfg=100 ctermbg=NONE cterm=bold
hi StatusLine guifg=#080808 guibg=#c8c8c8 guisp=#c8c8c8 gui=italic ctermfg=232 ctermbg=251 cterm=NONE
hi VertSplit guifg=#444444 guibg=#444444 guisp=#444444 gui=NONE ctermfg=238 ctermbg=238 cterm=NONE
hi StatusLineNC guifg=#857b6f guibg=#444444 guisp=#444444 gui=NONE ctermfg=101 ctermbg=238 cterm=NONE
hi LineNr guifg=#857b6f guibg=#080808 guisp=#080808 gui=NONE ctermfg=101 ctermbg=232 cterm=NONE
hi SpecialKey guifg=#626262 guibg=#2b2b2b guisp=#2b2b2b gui=NONE ctermfg=241 ctermbg=235 cterm=NONE
hi WarningMsg guifg=#ff5f55 guibg=NONE guisp=NONE gui=NONE ctermfg=203 ctermbg=NONE cterm=NONE
hi ErrorMsg guifg=#721e14 guibg=NONE guisp=NONE gui=bold ctermfg=3 ctermbg=NONE cterm=bold

" Vim >= 7.0 specific colors
if version >= 700
hi CursorLine guifg=NONE guibg=#32322f guisp=#32322f gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi MatchParen guifg=#eae788 guibg=#857b6f guisp=#857b6f gui=bold ctermfg=186 ctermbg=101 cterm=bold
hi PMenu guifg=#080808 guibg=#c8c8c8 guisp=#c8c8c8 gui=NONE ctermfg=232 ctermbg=251 cterm=NONE
hi PMenuSel guifg=#e3e0d7 guibg=#5c7b15 guisp=#5c7b15 gui=NONE ctermfg=254 ctermbg=64 cterm=NONE
endif

" Diff highlighting
hi DiffAdd guifg=NONE guibg=#9a73ed guisp=#9a73ed gui=NONE ctermfg=NONE ctermbg=141 cterm=NONE
hi DiffDelete guifg=#242424 guibg=#3e3969 guisp=#3e3969 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi DiffText guifg=NONE guibg=#e584e0 guisp=#e584e0 gui=NONE ctermfg=NONE ctermbg=176 cterm=NONE
hi DiffChange guifg=NONE guibg=#b8a0b6 guisp=#b8a0b6 gui=NONE ctermfg=NONE ctermbg=250 cterm=NONE

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu


" Syntax highlighting
hi Keyword guifg=#0a438e guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
hi Statement guifg=#0a438e guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
hi Constant guifg=#721e14 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi Number guifg=#721e14 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi PreProc guifg=#721e14 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi Function guifg=#5c7b15 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Identifier guifg=#5c7b15 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Type guifg=#666a21 guibg=NONE guisp=NONE gui=NONE ctermfg=58 ctermbg=NONE cterm=NONE
hi Special guifg=#816e21 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi String guifg=#3a6b11 guibg=NONE guisp=NONE gui=italic ctermfg=22 ctermbg=NONE cterm=NONE
hi Comment guifg=#3f3d37 guibg=NONE guisp=NONE gui=italic ctermfg=237 ctermbg=NONE cterm=NONE
hi Todo guifg=#ac630a guibg=NONE guisp=NONE gui=italic ctermfg=130 ctermbg=NONE cterm=NONE


" Links
hi! link FoldColumn		Folded
hi! link CursorColumn	CursorLine
hi! link NonText		LineNr

" vim:set ts=4 sw=4 noet:
