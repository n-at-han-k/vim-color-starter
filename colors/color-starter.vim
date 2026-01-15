" color-starter.vim - A terminal ANSI colorscheme
" Maintainer: Nathan
" Version: 1.0.0
" License: MIT

if exists('g:loaded_color_starter')
  finish
endif
let g:loaded_color_starter = 1

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'color-starter'
set notermguicolors

" This color scheme relies on ANSI colors only. It automatically inherits
" the 16 colors of your terminal color scheme. You can change the colors of
" certain highlight groups by picking a different color from the following set
" of colors. If you sticked to the ANSI color palette conventions when setting
" colors in your terminal emulator, this will look pretty neat. If you used
" a terminal color scheme that uses a different convention (e.g. base16)
" colors will likely look very odd if you use this color scheme.
"
" 0: Black        │   8: Bright Black (dark gray)
" 1: Red          │   9: Bright Red
" 2: Green        │  10: Bright Green
" 3: Yellow       │  11: Bright Yellow
" 4: Blue         │  12: Bright Blue
" 5: Magenta      │  13: Bright Magenta
" 6: Cyan         │  14: Bright Cyan
" 7: White (gray) │  15: Bright White
"
" Use the 'cterm' argument to make certain highlight groups appear in italic
" (if your terminal and font support it), bold, reverse, underlined, etc.
" See ':help attr-list' for possible options.

" Editor Elements
hi NonText         ctermfg=0                                    " Characters that don't exist in the text (e.g. '~' after end of buffer)
hi Ignore          ctermfg=NONE   ctermbg=NONE   cterm=NONE     " Left blank, hidden
hi Underlined                                    cterm=underline " Text that stands out, HTML links
hi Bold                                          cterm=bold      " Bold text (in markup)
hi Italic                                        cterm=italic    " Italic text (in markup)
hi StatusLine      ctermfg=15     ctermbg=8      cterm=NONE     " Status line of current window
hi StatusLineNC    ctermfg=15     ctermbg=0      cterm=NONE     " Status lines of non-current windows
hi VertSplit       ctermfg=8                                    " Column separating vertically split windows
hi TabLine         ctermfg=7      ctermbg=0                     " Tab pages line, not active tab page label
hi TabLineFill     ctermfg=0      ctermbg=NONE                  " Tab pages line, where there are no labels
hi TabLineSel      ctermfg=0      ctermbg=11                    " Tab pages line, active tab page label
hi Title           ctermfg=4                     cterm=bold      " Titles for output from :set all, :autocmd, etc.
hi CursorLine      ctermfg=NONE   ctermbg=0                     " Screen line the cursor is on (when 'cursorline' is set)
hi Cursor          ctermfg=0      ctermbg=15                    " Character under the cursor
hi CursorColumn                   ctermbg=0                     " Screen column the cursor is in (when 'cursorcolumn' is set)
hi LineNr          ctermfg=8                                    " Line number for :number and :# commands
hi CursorLineNr    ctermfg=6                                    " Line number when 'cursorline' is set
hi helpLeadBlank   ctermfg=NONE   ctermbg=NONE                  " Leading blank in help files
hi helpNormal      ctermfg=NONE   ctermbg=NONE                  " Normal text in help files
hi Visual          ctermfg=15     ctermbg=8      cterm=bold     " Visual mode selection
hi VisualNOS       ctermfg=15     ctermbg=8      cterm=bold     " Visual mode selection when vim is "Not Owning the Selection"
hi Pmenu           ctermfg=15     ctermbg=0                     " Popup menu: normal item
hi PmenuSbar       ctermfg=7      ctermbg=8                     " Popup menu: scrollbar
hi PmenuSel        ctermfg=15     ctermbg=8      cterm=bold     " Popup menu: selected item
hi PmenuThumb      ctermfg=NONE   ctermbg=7                     " Popup menu: scrollbar thumb
hi FoldColumn      ctermfg=7                                    " 'foldcolumn' indicator column
hi Folded          ctermfg=12                                   " Line used for closed folds
hi WildMenu        ctermfg=15     ctermbg=0      cterm=NONE     " Current match in 'wildmenu' completion
hi SpecialKey      ctermfg=0                                    " Unprintable characters: text displayed differently from what it is
hi IncSearch       ctermfg=0      ctermbg=1                     " 'incsearch' highlighting; also for replaced text with :s///c
hi CurSearch       ctermfg=0      ctermbg=3                     " Current search match under cursor
hi Search          ctermfg=0      ctermbg=11                    " Last search pattern highlighting
hi Directory       ctermfg=4                                    " Directory names in listings and other special names
hi MatchParen      ctermfg=3      ctermbg=0      cterm=underline " Matching parenthesis/bracket under cursor and its match
hi SpellBad                                      cterm=undercurl " Word not recognized by spellchecker
hi SpellCap                                      cterm=undercurl " Word should start with capital letter
hi SpellLocal                                    cterm=undercurl " Word recognized as used in another region
hi SpellRare                                     cterm=undercurl " Rare word
hi ColorColumn                    ctermbg=8                     " Columns set with 'colorcolumn'
hi SignColumn      ctermfg=7                                    " Column where signs are displayed
hi ModeMsg         ctermfg=0      ctermbg=15     cterm=bold     " 'showmode' message (e.g. -- INSERT --)
hi MoreMsg         ctermfg=4                                    " 'more-prompt' (-- More --)
hi Question        ctermfg=4                                    " Hit-enter prompt and yes/no questions
hi QuickFixLine    ctermfg=14     ctermbg=0                     " Current quickfix item in the quickfix window
hi Conceal         ctermfg=8                                    " Placeholder characters for concealed text
hi ToolbarLine     ctermfg=15     ctermbg=0                     " Toolbar background
hi ToolbarButton   ctermfg=15     ctermbg=8                     " Toolbar buttons
hi debugPC         ctermfg=7                                    " Current line in :terminal debugger
hi debugBreakpoint ctermfg=8                                    " Breakpoint marker in :terminal debugger
hi ErrorMsg        ctermfg=1                     cterm=bold,italic " Error messages on the command line
hi WarningMsg      ctermfg=11                                   " Warning messages
hi DiffAdd         ctermfg=0      ctermbg=10                    " Diff mode: added line
hi DiffChange      ctermfg=0      ctermbg=12                    " Diff mode: changed line
hi DiffDelete      ctermfg=0      ctermbg=9                     " Diff mode: deleted line
hi DiffText        ctermfg=0      ctermbg=14                    " Diff mode: changed text within a changed line
hi diffAdded       ctermfg=10                                   " Diff syntax: added line
hi diffRemoved     ctermfg=9                                    " Diff syntax: removed line
hi diffChanged     ctermfg=12                                   " Diff syntax: changed line
hi diffOldFile     ctermfg=11                                   " Diff syntax: old file name
hi diffNewFile     ctermfg=13                                   " Diff syntax: new file name
hi diffFile        ctermfg=12                                   " Diff syntax: file header
hi diffLine        ctermfg=7                                    " Diff syntax: line info (@@...@@)
hi diffIndexLine   ctermfg=14                                   " Diff syntax: index line
hi healthError     ctermfg=1                                    " :checkhealth error
hi healthSuccess   ctermfg=2                                    " :checkhealth success
hi healthWarning   ctermfg=3                                    " :checkhealth warning

" Syntax
hi Comment         ctermfg=8                     cterm=italic    " Any comment
hi Constant        ctermfg=3                                    " Any constant
hi Error           ctermfg=1                                    " Any erroneous construct
hi Identifier      ctermfg=9                                    " Variable name
hi Function        ctermfg=4                                    " Function name
hi Special         ctermfg=13                                   " Special symbol (e.g. escape characters)
hi Statement       ctermfg=5                                    " Any statement (if, do, for, etc.)
hi String          ctermfg=2                                    " String constant
hi Operator        ctermfg=6                                    " Operators (sizeof, +, *, etc.)
hi Boolean         ctermfg=3                                    " Boolean constant (true, false)
hi Label           ctermfg=14                                   " case, default, etc.
hi Keyword         ctermfg=5                                    " Any other keyword
hi Exception       ctermfg=5                                    " try, catch, throw
hi Conditional     ctermfg=5                                    " if, then, else, endif, switch, etc.
hi PreProc         ctermfg=13                                   " Generic preprocessor
hi Include         ctermfg=5                                    " #include preprocessor
hi Macro           ctermfg=5                                    " Macro definitions
hi StorageClass    ctermfg=11                                   " static, register, volatile, etc.
hi Structure       ctermfg=11                                   " struct, union, enum, etc.
hi Todo            ctermfg=0      ctermbg=9      cterm=bold     " TODO, FIXME, XXX, etc.
hi Type            ctermfg=11                                   " int, long, char, etc.

" Neovim-specific
if has('nvim')
  hi NormalFloat     ctermfg=15     ctermbg=0                     " Normal text in floating windows
  hi FloatBorder     ctermfg=7      ctermbg=0                     " Border of floating windows
  hi FloatShadow     ctermfg=15     ctermbg=0                     " Shadow behind floating windows
endif
