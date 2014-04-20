" Author: Hydride0

hi clear

if exists("syntax on")
	syntax reset
endif

let g:colors_name = "wintersun"

set t_Co=256

" General colors
hi Normal        cterm=none      ctermfg=251       ctermbg=none
hi Directory     cterm=none      ctermfg=cyan       ctermbg=none
hi ErrorMsg      cterm=none      ctermfg=cyan   ctermbg=none
hi NonText       cterm=none      ctermfg=darkgray  ctermbg=none
hi SpecialKey    cterm=none      ctermfg=236       ctermbg=none
hi LineNr        cterm=none      ctermfg=darkgrey  ctermbg=none
hi IncSearch     cterm=bold      ctermfg=232       ctermbg=cyan
hi Search        cterm=bold      ctermfg=232       ctermbg=cyan
hi Visual        cterm=none      ctermfg=white     ctermbg=cyan
hi VisualNOS     cterm=none      ctermfg=white     ctermbg=cyan
hi MoreMsg       cterm=bold      ctermfg=white     ctermbg=none
hi Question      cterm=bold      ctermfg=white     ctermbg=none
hi WarningMsg    cterm=none      ctermfg=cyan   ctermbg=none
hi WildMenu      cterm=none      ctermfg=white     ctermbg=none
hi TabLine       cterm=underline ctermfg=white     ctermbg=none
hi TabLineSel    cterm=underline ctermfg=white     ctermbg=cyan
hi TabLineFill   cterm=underline ctermfg=white     ctermbg=none
hi DiffAdd       cterm=none      ctermfg=white     ctermbg=darkgreen
hi DiffChange    cterm=underline ctermfg=none      ctermbg=none
hi DiffDelete    cterm=none      ctermfg=white     ctermbg=cyan
hi DiffText      cterm=none      ctermfg=white     ctermbg=none
hi SignColumn    cterm=none      ctermfg=cyan   ctermbg=none
hi VertSplit     cterm=none      ctermfg=cyan   ctermbg=none
hi CursorColumn  cterm=none      ctermfg=none      ctermbg=233
hi CursorLineNr  cterm=none      ctermfg=none      ctermbg=233
hi CursorLine    cterm=none      ctermfg=none      ctermbg=233
hi ColorColumn   cterm=none      ctermfg=none      ctermbg=233
hi Cursor        cterm=none      ctermfg=white     ctermbg=cyan
hi Title         cterm=bold      ctermfg=white     ctermbg=none
hi Pmenu         cterm=none      ctermfg=none      ctermbg=233
hi PmenuSel      cterm=bold      ctermfg=white     ctermbg=cyan
hi PmenuSbar     cterm=none      ctermfg=233       ctermbg=233
hi PmenuThumb    cterm=none      ctermfg=cyan   ctermbg=cyan
hi Folded        cterm=none      ctermfg=cyan   ctermbg=none
hi FoldColumn    cterm=none      ctermfg=cyan   ctermbg=none
hi MatchParen    cterm=reverse   ctermfg=none      ctermbg=none

" syntax
hi Comment     cterm=none ctermfg=darkgrey ctermbg=none
hi PreProc     cterm=none ctermfg=white    ctermbg=none
hi Constant    cterm=none ctermfg=cyan  ctermbg=none
hi Type        cterm=none ctermfg=blue      ctermbg=none
hi Statement   cterm=bold ctermfg=white    ctermbg=none
hi Identifier  cterm=none ctermfg=blue      ctermbg=none
hi Ignore      cterm=none ctermfg=darkgray ctermbg=none
hi Special     cterm=none ctermfg=cyan  ctermbg=none
hi Error       cterm=none ctermfg=white    ctermbg=cyan
hi Todo        cterm=none ctermfg=white    ctermbg=cyan
hi Underlined  cterm=none ctermfg=cyan  ctermbg=none
hi Number      cterm=none ctermfg=cyan  ctermbg=none
hi Function    cterm=none ctermfg=white    ctermbg=none
hi Define      cterm=bold ctermfg=white    ctermbg=none

hi link String          Constant
hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Number          Constant
hi link Repeat          Statement
hi link Label           Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Operator        Statement
hi link Include         PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Normal
hi link SpecialComment  Special
hi link Debug           Special
hi link Conditional     Statement
