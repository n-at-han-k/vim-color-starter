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

" Color Palettes
" Set s:selectedColorMap to one of:
"   tango, gruvbox_dark, gruvbox_light, solarized_dark, solarized_light,
"   nord, dracula, tokyo_night, catppuccin_mocha, one_dark
let s:selectedColorMap = 'catppuccin_mocha'
"set notermguicolors

let s:tango = {
  \ 'Black':         '#000000',
  \ 'Red':           '#cc0000',
  \ 'Green':         '#4e9a06',
  \ 'Yellow':        '#c4a000',
  \ 'Blue':          '#3465a4',
  \ 'Magenta':       '#75507b',
  \ 'Cyan':          '#06989a',
  \ 'White':         '#d3d7cf',
  \ 'BrightBlack':   '#555753',
  \ 'BrightRed':     '#ef2929',
  \ 'BrightGreen':   '#8ae234',
  \ 'BrightYellow':  '#fce94f',
  \ 'BrightBlue':    '#729fcf',
  \ 'BrightMagenta': '#ad7fa8',
  \ 'BrightCyan':    '#34e2e2',
  \ 'BrightWhite':   '#eeeeec',
  \ }

let s:gruvbox_dark = {
  \ 'Black':         '#282828',
  \ 'Red':           '#cc241d',
  \ 'Green':         '#98971a',
  \ 'Yellow':        '#d79921',
  \ 'Blue':          '#458588',
  \ 'Magenta':       '#b16286',
  \ 'Cyan':          '#689d6a',
  \ 'White':         '#a89984',
  \ 'BrightBlack':   '#928374',
  \ 'BrightRed':     '#fb4934',
  \ 'BrightGreen':   '#b8bb26',
  \ 'BrightYellow':  '#fabd2f',
  \ 'BrightBlue':    '#83a598',
  \ 'BrightMagenta': '#d3869b',
  \ 'BrightCyan':    '#8ec07c',
  \ 'BrightWhite':   '#ebdbb2',
  \ }

let s:gruvbox_light = {
  \ 'Black':         '#fbf1c7',
  \ 'Red':           '#cc241d',
  \ 'Green':         '#98971a',
  \ 'Yellow':        '#d79921',
  \ 'Blue':          '#458588',
  \ 'Magenta':       '#b16286',
  \ 'Cyan':          '#689d6a',
  \ 'White':         '#7c6f64',
  \ 'BrightBlack':   '#928374',
  \ 'BrightRed':     '#9d0006',
  \ 'BrightGreen':   '#79740e',
  \ 'BrightYellow':  '#b57614',
  \ 'BrightBlue':    '#076678',
  \ 'BrightMagenta': '#8f3f71',
  \ 'BrightCyan':    '#427b58',
  \ 'BrightWhite':   '#3c3836',
  \ }

let s:solarized_dark = {
  \ 'Black':         '#073642',
  \ 'Red':           '#dc322f',
  \ 'Green':         '#859900',
  \ 'Yellow':        '#b58900',
  \ 'Blue':          '#268bd2',
  \ 'Magenta':       '#d33682',
  \ 'Cyan':          '#2aa198',
  \ 'White':         '#eee8d5',
  \ 'BrightBlack':   '#002b36',
  \ 'BrightRed':     '#cb4b16',
  \ 'BrightGreen':   '#586e75',
  \ 'BrightYellow':  '#657b83',
  \ 'BrightBlue':    '#839496',
  \ 'BrightMagenta': '#6c71c4',
  \ 'BrightCyan':    '#93a1a1',
  \ 'BrightWhite':   '#fdf6e3',
  \ }

let s:solarized_light = {
  \ 'Black':         '#eee8d5',
  \ 'Red':           '#dc322f',
  \ 'Green':         '#859900',
  \ 'Yellow':        '#b58900',
  \ 'Blue':          '#268bd2',
  \ 'Magenta':       '#d33682',
  \ 'Cyan':          '#2aa198',
  \ 'White':         '#073642',
  \ 'BrightBlack':   '#fdf6e3',
  \ 'BrightRed':     '#cb4b16',
  \ 'BrightGreen':   '#93a1a1',
  \ 'BrightYellow':  '#839496',
  \ 'BrightBlue':    '#657b83',
  \ 'BrightMagenta': '#6c71c4',
  \ 'BrightCyan':    '#586e75',
  \ 'BrightWhite':   '#002b36',
  \ }

let s:nord = {
  \ 'Black':         '#3b4252',
  \ 'Red':           '#bf616a',
  \ 'Green':         '#a3be8c',
  \ 'Yellow':        '#ebcb8b',
  \ 'Blue':          '#81a1c1',
  \ 'Magenta':       '#b48ead',
  \ 'Cyan':          '#88c0d0',
  \ 'White':         '#e5e9f0',
  \ 'BrightBlack':   '#4c566a',
  \ 'BrightRed':     '#bf616a',
  \ 'BrightGreen':   '#a3be8c',
  \ 'BrightYellow':  '#ebcb8b',
  \ 'BrightBlue':    '#81a1c1',
  \ 'BrightMagenta': '#b48ead',
  \ 'BrightCyan':    '#8fbcbb',
  \ 'BrightWhite':   '#eceff4',
  \ }

let s:dracula = {
  \ 'Black':         '#21222c',
  \ 'Red':           '#ff5555',
  \ 'Green':         '#50fa7b',
  \ 'Yellow':        '#f1fa8c',
  \ 'Blue':          '#bd93f9',
  \ 'Magenta':       '#ff79c6',
  \ 'Cyan':          '#8be9fd',
  \ 'White':         '#f8f8f2',
  \ 'BrightBlack':   '#6272a4',
  \ 'BrightRed':     '#ff6e6e',
  \ 'BrightGreen':   '#69ff94',
  \ 'BrightYellow':  '#ffffa5',
  \ 'BrightBlue':    '#d6acff',
  \ 'BrightMagenta': '#ff92df',
  \ 'BrightCyan':    '#a4ffff',
  \ 'BrightWhite':   '#ffffff',
  \ }

let s:tokyo_night = {
  \ 'Black':         '#15161e',
  \ 'Red':           '#f7768e',
  \ 'Green':         '#9ece6a',
  \ 'Yellow':        '#e0af68',
  \ 'Blue':          '#7aa2f7',
  \ 'Magenta':       '#bb9af7',
  \ 'Cyan':          '#7dcfff',
  \ 'White':         '#a9b1d6',
  \ 'BrightBlack':   '#414868',
  \ 'BrightRed':     '#f7768e',
  \ 'BrightGreen':   '#9ece6a',
  \ 'BrightYellow':  '#e0af68',
  \ 'BrightBlue':    '#7aa2f7',
  \ 'BrightMagenta': '#bb9af7',
  \ 'BrightCyan':    '#7dcfff',
  \ 'BrightWhite':   '#c0caf5',
  \ }

let s:catppuccin_mocha = {
  \ 'Black':         '#45475a',
  \ 'Red':           '#f38ba8',
  \ 'Green':         '#a6e3a1',
  \ 'Yellow':        '#f9e2af',
  \ 'Blue':          '#89b4fa',
  \ 'Magenta':       '#f5c2e7',
  \ 'Cyan':          '#94e2d5',
  \ 'White':         '#bac2de',
  \ 'BrightBlack':   '#585b70',
  \ 'BrightRed':     '#f38ba8',
  \ 'BrightGreen':   '#a6e3a1',
  \ 'BrightYellow':  '#f9e2af',
  \ 'BrightBlue':    '#89b4fa',
  \ 'BrightMagenta': '#f5c2e7',
  \ 'BrightCyan':    '#94e2d5',
  \ 'BrightWhite':   '#a6adc8',
  \ }

let s:one_dark = {
  \ 'Black':         '#282c34',
  \ 'Red':           '#e06c75',
  \ 'Green':         '#98c379',
  \ 'Yellow':        '#e5c07b',
  \ 'Blue':          '#61afef',
  \ 'Magenta':       '#c678dd',
  \ 'Cyan':          '#56b6c2',
  \ 'White':         '#abb2bf',
  \ 'BrightBlack':   '#5c6370',
  \ 'BrightRed':     '#e06c75',
  \ 'BrightGreen':   '#98c379',
  \ 'BrightYellow':  '#e5c07b',
  \ 'BrightBlue':    '#61afef',
  \ 'BrightMagenta': '#c678dd',
  \ 'BrightCyan':    '#56b6c2',
  \ 'BrightWhite':   '#ffffff',
  \ }


function! s:guiColorFor(colorName) abort
  return s:{s:selectedColorMap}[a:colorName]
endfunction

" Color Definitions
let s:starterBlack         = {'cterm': 0,      'gui': s:guiColorFor('Black'),         'name': 'Black'}
let s:starterRed           = {'cterm': 1,      'gui': s:guiColorFor('Red'),           'name': 'Red'}
let s:starterGreen         = {'cterm': 2,      'gui': s:guiColorFor('Green'),         'name': 'Green'}
let s:starterYellow        = {'cterm': 3,      'gui': s:guiColorFor('Yellow'),        'name': 'Yellow'}
let s:starterBlue          = {'cterm': 4,      'gui': s:guiColorFor('Blue'),          'name': 'Blue'}
let s:starterMagenta       = {'cterm': 5,      'gui': s:guiColorFor('Magenta'),       'name': 'Magenta'}
let s:starterCyan          = {'cterm': 6,      'gui': s:guiColorFor('Cyan'),          'name': 'Cyan'}
let s:starterWhite         = {'cterm': 7,      'gui': s:guiColorFor('White'),         'name': 'White'}
let s:starterBrightBlack   = {'cterm': 8,      'gui': s:guiColorFor('BrightBlack'),   'name': 'Bright Black'}
let s:starterBrightRed     = {'cterm': 9,      'gui': s:guiColorFor('BrightRed'),     'name': 'Bright Red'}
let s:starterBrightGreen   = {'cterm': 10,     'gui': s:guiColorFor('BrightGreen'),   'name': 'Bright Green'}
let s:starterBrightYellow  = {'cterm': 11,     'gui': s:guiColorFor('BrightYellow'),  'name': 'Bright Yellow'}
let s:starterBrightBlue    = {'cterm': 12,     'gui': s:guiColorFor('BrightBlue'),    'name': 'Bright Blue'}
let s:starterBrightMagenta = {'cterm': 13,     'gui': s:guiColorFor('BrightMagenta'), 'name': 'Bright Magenta'}
let s:starterBrightCyan    = {'cterm': 14,     'gui': s:guiColorFor('BrightCyan'),    'name': 'Bright Cyan'}
let s:starterBrightWhite   = {'cterm': 15,     'gui': s:guiColorFor('BrightWhite'),   'name': 'Bright White'}
let s:starterNone          = {'cterm': 'NONE', 'gui': 'NONE',                         'name': 'NONE'}

" call <sid>hi(group, fg, bg, style [, underline_color])
"
"   group           - highlight group name (string)
"   fg              - foreground color (s:starter* dict or s:starterNone)
"   bg              - background color (s:starter* dict or s:starterNone)
"   style           - text decoration string (see options below)
"   underline_color - optional color for underline-style decorations (s:starter* dict)
"
" Text Decoration Options (style parameter)
" ──────────────────────────────────────────
" Multiple styles can be combined with commas, e.g. 'bold,italic'.
" See ':help attr-list' for the canonical reference.
"
"   none           no decoration (resets all attributes)
"   bold           bold text
"   italic         italic text (requires terminal and font support)
"   reverse        swap foreground and background colors (same as 'inverse')
"   standout       similar to reverse; implementation varies by terminal
"
"   underline      straight underline
"   undercurl      curly underline  (requires modern terminal or GUI)
"   underdouble    double underline (requires modern terminal or GUI)
"   underdotted    dotted underline (requires modern terminal or GUI)
"   underdashed    dashed underline (requires modern terminal or GUI)
"
"   strikethrough  horizontal line through the text (requires modern terminal or GUI)
"   nocombine      override attributes from linked groups instead of combining
"
" The underline-style decorations (undercurl, underdouble, underdotted,
" underdashed) use the optional 5th argument (underline_color) to set their
" color. Terminals that support these include kitty, iTerm2, WezTerm, and
" most other terminals built on modern VTE or GPU-accelerated renderers.

function! s:hi(group, fg, bg, style, ...) abort
  let l:ctermul = a:0 >= 1 ? a:1.cterm : 'NONE'
  let l:guisp = a:0 >= 1 ? a:1.gui : 'NONE'
  execute 'hi ' . a:group
    \ . ' term=' . a:style
    \ . ' cterm=' . a:style
    \ . ' ctermfg=' . a:fg.cterm
    \ . ' ctermbg=' . a:bg.cterm
    \ . ' ctermul=' . l:ctermul
    \ . ' ctermfont=NONE'
    \ . ' gui=' . a:style
    \ . ' guifg=' . a:fg.gui
    \ . ' guibg=' . a:bg.gui
    \ . ' guisp=' . l:guisp
endfunction

" Editor Elements
call <sid>hi('Normal',            s:starterNone,          s:starterNone,         'none')        " Normal text
call <sid>hi('NonText',           s:starterBlack,         s:starterNone,         'none')        " Characters that don't exist in the text (e.g. '~' after end of buffer)
call <sid>hi('EndOfBuffer',       s:starterBlack,         s:starterNone,         'none')        " Filler lines (~) after the last line in the buffer
call <sid>hi('Ignore',            s:starterNone,          s:starterNone,         'none')        " Left blank, hidden
call <sid>hi('Underlined',        s:starterNone,          s:starterNone,         'underline')   " Text that stands out, HTML links
call <sid>hi('Bold',              s:starterNone,          s:starterNone,         'bold')        " Bold text (in markup)
call <sid>hi('Italic',            s:starterNone,          s:starterNone,         'italic')      " Italic text (in markup)
call <sid>hi('StatusLine',        s:starterBrightWhite,   s:starterBrightBlack,  'none')        " Status line of current window
call <sid>hi('StatusLineNC',      s:starterBrightWhite,   s:starterBlack,        'none')        " Status lines of non-current windows
call <sid>hi('StatusLineTerm',    s:starterBrightWhite,   s:starterBrightBlack,  'none')        " Status line of current terminal window
call <sid>hi('StatusLineTermNC',  s:starterBrightWhite,   s:starterBlack,        'none')        " Status lines of non-current terminal windows
call <sid>hi('VertSplit',         s:starterBrightBlack,   s:starterNone,         'none')        " Column separating vertically split windows
call <sid>hi('TabLine',           s:starterWhite,         s:starterBlack,        'none')        " Tab pages line, not active tab page label
call <sid>hi('TabLineFill',       s:starterBlack,         s:starterNone,         'none')        " Tab pages line, where there are no labels
call <sid>hi('TabLineSel',        s:starterBlack,         s:starterBrightYellow, 'none')        " Tab pages line, active tab page label
call <sid>hi('TabPanel',          s:starterWhite,         s:starterBlack,        'none')        " TabPanel, not active tab page label
call <sid>hi('TabPanelFill',      s:starterBlack,         s:starterNone,         'none')        " TabPanel, where there are no labels
call <sid>hi('TabPanelSel',       s:starterBlack,         s:starterBrightYellow, 'none')        " TabPanel, active tab page label
call <sid>hi('Terminal',          s:starterNone,          s:starterNone,         'none')        " Terminal window
call <sid>hi('Title',             s:starterBlue,          s:starterNone,         'bold')        " Titles for output from :set all, :autocmd, etc.
call <sid>hi('CursorLine',        s:starterNone,          s:starterBlack,        'none')        " Screen line the cursor is on (when 'cursorline' is set)
call <sid>hi('Cursor',            s:starterBlack,         s:starterBrightWhite,  'none')        " Character under the cursor
call <sid>hi('lCursor',           s:starterBlack,         s:starterBrightWhite,  'none')        " Character under cursor when language-mapping is used
call <sid>hi('CursorIM',          s:starterBlack,         s:starterBrightWhite,  'none')        " Cursor in IME mode
call <sid>hi('CursorColumn',      s:starterNone,          s:starterBlack,        'none')        " Screen column the cursor is in (when 'cursorcolumn' is set)
call <sid>hi('LineNr',            s:starterBrightBlack,   s:starterNone,         'none')        " Line number for :number and :# commands
call <sid>hi('LineNrAbove',       s:starterBrightBlack,   s:starterNone,         'none')        " Line number above cursor (relativenumber)
call <sid>hi('LineNrBelow',       s:starterBrightBlack,   s:starterNone,         'none')        " Line number below cursor (relativenumber)
call <sid>hi('CursorLineNr',      s:starterCyan,          s:starterNone,         'none')        " Line number when 'cursorline' is set
call <sid>hi('CursorLineFold',    s:starterWhite,         s:starterBlack,        'none')        " FoldColumn when 'cursorline' is set for cursor line
call <sid>hi('CursorLineSign',    s:starterWhite,         s:starterBlack,        'none')        " SignColumn when 'cursorline' is set for cursor line
call <sid>hi('helpLeadBlank',     s:starterNone,          s:starterNone,         'none')        " Leading blank in help files
call <sid>hi('helpNormal',        s:starterNone,          s:starterNone,         'none')        " Normal text in help files
call <sid>hi('Visual',            s:starterBrightWhite,   s:starterBrightBlack,  'bold')        " Visual mode selection
call <sid>hi('VisualNOS',         s:starterBrightWhite,   s:starterBrightBlack,  'bold')        " Visual mode selection when vim is "Not Owning the Selection"
call <sid>hi('Pmenu',             s:starterBrightWhite,   s:starterBlack,        'none')        " Popup menu: normal item
call <sid>hi('PmenuSbar',         s:starterWhite,         s:starterBrightBlack,  'none')        " Popup menu: scrollbar
call <sid>hi('PmenuSel',          s:starterBrightWhite,   s:starterBrightBlack,  'bold')        " Popup menu: selected item
call <sid>hi('PmenuThumb',        s:starterNone,          s:starterWhite,        'none')        " Popup menu: scrollbar thumb
call <sid>hi('PmenuKind',         s:starterBrightCyan,    s:starterBlack,        'none')        " Popup menu: normal item "kind"
call <sid>hi('PmenuKindSel',      s:starterBrightCyan,    s:starterBrightBlack,  'bold')        " Popup menu: selected item "kind"
call <sid>hi('PmenuExtra',        s:starterBrightBlack,   s:starterBlack,        'none')        " Popup menu: normal item "extra text"
call <sid>hi('PmenuExtraSel',     s:starterWhite,         s:starterBrightBlack,  'bold')        " Popup menu: selected item "extra text"
call <sid>hi('PmenuMatch',        s:starterBrightYellow,  s:starterBlack,        'none')        " Popup menu: matched text in normal item
call <sid>hi('PmenuMatchSel',     s:starterBrightYellow,  s:starterBrightBlack,  'bold')        " Popup menu: matched text in selected item
call <sid>hi('PmenuBorder',       s:starterWhite,         s:starterBlack,        'none')        " Popup menu: border characters
call <sid>hi('PmenuShadow',       s:starterNone,          s:starterBlack,        'none')        " Popup menu: shadow
call <sid>hi('ComplMatchIns',     s:starterBrightYellow,  s:starterNone,         'underline')   " Matched text of the currently inserted completion
call <sid>hi('PreInsert',         s:starterBrightBlack,   s:starterNone,         'none')        " Text inserted when "preinsert" is in 'completeopt'
call <sid>hi('PopupSelected',     s:starterBrightWhite,   s:starterBrightBlack,  'bold')        " Popup window created with popup_menu()
call <sid>hi('PopupNotification', s:starterBrightYellow,  s:starterNone,         'none')        " Popup window created with popup_notification()
call <sid>hi('FoldColumn',        s:starterWhite,         s:starterNone,         'none')        " 'foldcolumn' indicator column
call <sid>hi('Folded',            s:starterBrightBlue,    s:starterNone,         'none')        " Line used for closed folds
call <sid>hi('WildMenu',          s:starterBrightWhite,   s:starterBlack,        'none')        " Current match in 'wildmenu' completion
call <sid>hi('SpecialKey',        s:starterBlack,         s:starterNone,         'none')        " Unprintable characters: text displayed differently from what it is
call <sid>hi('IncSearch',         s:starterBlack,         s:starterRed,          'none')        " 'incsearch' highlighting; also for replaced text with :s///c
call <sid>hi('CurSearch',         s:starterBlack,         s:starterYellow,       'none')        " Current search match under cursor
call <sid>hi('Search',            s:starterBlack,         s:starterBrightYellow, 'none')        " Last search pattern highlighting
call <sid>hi('Directory',         s:starterNone,          s:starterNone,         'none')        " Directory names in listings and other special names
call <sid>hi('MatchParen',        s:starterYellow,        s:starterBlack,        'underline')   " Matching parenthesis/bracket under cursor and its match
call <sid>hi('MessageWindow',     s:starterBrightYellow,  s:starterNone,         'none')        " Messages popup window used by :echowindow
call <sid>hi('ModeMsg',           s:starterBlack,         s:starterBrightWhite,  'bold')        " 'showmode' message (e.g. -- INSERT --)
call <sid>hi('MsgArea',           s:starterNone,          s:starterNone,         'none')        " Command-line area
call <sid>hi('MoreMsg',           s:starterBlue,          s:starterNone,         'none')        " 'more-prompt' (-- More --)
call <sid>hi('Question',          s:starterBlue,          s:starterNone,         'none')        " Hit-enter prompt and yes/no questions
call <sid>hi('ColorColumn',       s:starterNone,          s:starterNone,         'none')        " Columns set with 'colorcolumn'
call <sid>hi('SignColumn',        s:starterWhite,         s:starterNone,         'none')        " Column where signs are displayed
call <sid>hi('QuickFixLine',      s:starterBrightCyan,    s:starterBlack,        'none')        " Current quickfix item in the quickfix window
call <sid>hi('Conceal',           s:starterBrightBlack,   s:starterNone,         'none')        " Placeholder characters for concealed text
call <sid>hi('ToolbarLine',       s:starterBrightWhite,   s:starterBlack,        'none')        " Toolbar background
call <sid>hi('ToolbarButton',     s:starterBrightWhite,   s:starterBrightBlack,  'none')        " Toolbar buttons
call <sid>hi('debugPC',           s:starterWhite,         s:starterNone,         'none')        " Current line in :terminal debugger
call <sid>hi('debugBreakpoint',   s:starterBrightBlack,   s:starterNone,         'none')        " Breakpoint marker in :terminal debugger
call <sid>hi('ErrorMsg',          s:starterRed,           s:starterNone,         'bold,italic') " Error messages on the command line
call <sid>hi('WarningMsg',        s:starterBrightYellow,  s:starterNone,         'none')        " Warning messages
call <sid>hi('DiffAdd',           s:starterBlack,         s:starterBrightGreen,  'none')        " Diff mode: added line
call <sid>hi('DiffChange',        s:starterBlack,         s:starterBrightBlue,   'none')        " Diff mode: changed line
call <sid>hi('DiffDelete',        s:starterBlack,         s:starterBrightRed,    'none')        " Diff mode: deleted line
call <sid>hi('DiffText',          s:starterBlack,         s:starterBrightCyan,   'none')        " Diff mode: changed text within a changed line
call <sid>hi('DiffTextAdd',       s:starterBlack,         s:starterBrightCyan,   'none')        " Diff mode: added text within a changed line
call <sid>hi('diffAdded',         s:starterBrightGreen,   s:starterNone,         'none')        " Diff syntax: added line
call <sid>hi('diffRemoved',       s:starterBrightRed,     s:starterNone,         'none')        " Diff syntax: removed line
call <sid>hi('diffChanged',       s:starterBrightBlue,    s:starterNone,         'none')        " Diff syntax: changed line
call <sid>hi('diffOldFile',       s:starterBrightYellow,  s:starterNone,         'none')        " Diff syntax: old file name
call <sid>hi('diffNewFile',       s:starterBrightMagenta, s:starterNone,         'none')        " Diff syntax: new file name
call <sid>hi('diffFile',          s:starterBrightBlue,    s:starterNone,         'none')        " Diff syntax: file header
call <sid>hi('diffLine',          s:starterWhite,         s:starterNone,         'none')        " Diff syntax: line info (@@...@@)
call <sid>hi('diffIndexLine',     s:starterBrightCyan,    s:starterNone,         'none')        " Diff syntax: index line
call <sid>hi('healthError',       s:starterRed,           s:starterNone,         'none')        " :checkhealth error
call <sid>hi('healthSuccess',     s:starterGreen,         s:starterNone,         'none')        " :checkhealth success
call <sid>hi('healthWarning',     s:starterYellow,        s:starterNone,         'none')        " :checkhealth warning

" Spelling

" Spelling
call <sid>hi('SpellBad',          s:starterNone,          s:starterNone,         'undercurl',   s:starterRed)      " Word not recognized by spellchecker
call <sid>hi('SpellCap',          s:starterNone,          s:starterNone,         'undercurl',   s:starterBlue)     " Word should start with capital letter
call <sid>hi('SpellLocal',        s:starterNone,          s:starterNone,         'undercurl',   s:starterCyan)     " Word recognized as used in another region
call <sid>hi('SpellRare',         s:starterNone,          s:starterNone,         'undercurl',   s:starterMagenta)  " Rare word

" Syntax
call <sid>hi('Comment',           s:starterBrightBlack,   s:starterNone,         'italic')      " Any comment
call <sid>hi('Constant',          s:starterNone,          s:starterNone,         'none')        " Any constant
call <sid>hi('String',            s:starterNone,          s:starterNone,         'none')        " String constant
call <sid>hi('Character',         s:starterNone,          s:starterNone,         'none')        " Character constant: 'c', '\n'
call <sid>hi('Number',            s:starterNone,          s:starterNone,         'none')        " Number constant: 234, 0xff
call <sid>hi('Boolean',           s:starterNone,          s:starterNone,         'none')        " Boolean constant (true, false)
call <sid>hi('Float',             s:starterNone,          s:starterNone,         'none')        " Floating point constant: 2.3e10
call <sid>hi('Identifier',        s:starterNone,          s:starterNone,         'none')        " Variable name
call <sid>hi('Function',          s:starterNone,          s:starterNone,         'none')        " Function name
call <sid>hi('Statement',         s:starterNone,          s:starterNone,         'none')        " Any statement (if, do, for, etc.)
call <sid>hi('Conditional',       s:starterNone,          s:starterNone,         'none')        " if, then, else, endif, switch, etc.
call <sid>hi('Repeat',            s:starterNone,          s:starterNone,         'none')        " for, do, while, etc.
call <sid>hi('Label',             s:starterNone,          s:starterNone,         'none')        " case, default, etc.
call <sid>hi('Operator',          s:starterNone,          s:starterNone,         'none')        " Operators (sizeof, +, *, etc.)
call <sid>hi('Keyword',           s:starterNone,          s:starterNone,         'none')        " Any other keyword
call <sid>hi('Exception',         s:starterNone,          s:starterNone,         'none')        " try, catch, throw
call <sid>hi('PreProc',           s:starterNone,          s:starterNone,         'none')        " Generic preprocessor
call <sid>hi('Include',           s:starterNone,          s:starterNone,         'none')        " #include preprocessor
call <sid>hi('Define',            s:starterNone,          s:starterNone,         'none')        " Preprocessor #define
call <sid>hi('Macro',             s:starterNone,          s:starterNone,         'none')        " Macro definitions
call <sid>hi('PreCondit',         s:starterNone,          s:starterNone,         'none')        " Preprocessor #if, #else, #endif, etc.
call <sid>hi('Type',              s:starterNone,          s:starterNone,         'none')        " int, long, char, etc.
call <sid>hi('StorageClass',      s:starterNone,          s:starterNone,         'none')        " static, register, volatile, etc.
call <sid>hi('Structure',         s:starterNone,          s:starterNone,         'none')        " struct, union, enum, etc.
call <sid>hi('Typedef',           s:starterNone,          s:starterNone,         'none')        " A typedef
call <sid>hi('Special',           s:starterNone,          s:starterNone,         'none')        " Special symbol (e.g. escape characters)
call <sid>hi('SpecialChar',       s:starterNone,          s:starterNone,         'none')        " Special character in a constant
call <sid>hi('Tag',               s:starterNone,          s:starterNone,         'none')        " You can use CTRL-] on this
call <sid>hi('Delimiter',         s:starterNone,          s:starterNone,         'none')        " Character that needs attention
call <sid>hi('SpecialComment',    s:starterNone,          s:starterNone,         'none')        " Special things inside a comment
call <sid>hi('Debug',             s:starterNone,          s:starterNone,         'none')        " Debugging statements
call <sid>hi('Error',             s:starterNone,          s:starterNone,         'none')        " Any erroneous construct
call <sid>hi('Todo',              s:starterNone,          s:starterNone,         'bold')        " TODO, FIXME, XXX, etc.
call <sid>hi('BoldItalic',        s:starterNone,          s:starterNone,         'bold,italic') " Bold and italic text (in markup)
call <sid>hi('Added',             s:starterNone,          s:starterNone,         'none')        " Added line in a diff
call <sid>hi('Changed',           s:starterNone,          s:starterNone,         'none')        " Changed line in a diff
call <sid>hi('Removed',           s:starterNone,          s:starterNone,         'none')        " Removed line in a diff

" Neovim-specific
if has('nvim')
  call <sid>hi('NormalFloat',       s:starterBrightWhite,   s:starterBlack,        'none')        " Normal text in floating windows
  call <sid>hi('FloatBorder',       s:starterWhite,         s:starterBlack,        'none')        " Border of floating windows
  call <sid>hi('FloatShadow',       s:starterBrightWhite,   s:starterBlack,        'none')        " Shadow behind floating windows
endif
