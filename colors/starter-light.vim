hi clear

if exists('syntax_on')
  syntax reset
endif

set background=light

let g:colors_name = 'starter-light'

set termguicolors

let s:colorMap = {
  \ 'Black':         '#000000',
  \ 'Red':           '#cc0000',
  \ 'Green':         '#4e9a06',
  \ 'Yellow':        '#c4a000',
  \ 'Blue':          '#3465a4',
  \ 'Magenta':       '#75507b',
  \ 'Cyan':          '#06989a',
  \ 'White':         '#eeeeee',
  \ 'BrightBlack':   '#888888',
  \ 'BrightRed':     '#ef2929',
  \ 'BrightGreen':   '#8ae234',
  \ 'BrightYellow':  '#fce94f',
  \ 'BrightBlue':    '#729fcf',
  \ 'BrightMagenta': '#ad7fa8',
  \ 'BrightCyan':    '#34e2e2',
  \ 'BrightWhite':   '#FFFFFF',
  \ }

let s:Black         = {'cterm': 0,      'gui': s:colorMap['Black'],         'name': 'Black'}
let s:Red           = {'cterm': 1,      'gui': s:colorMap['Red'],           'name': 'Red'}
let s:Green         = {'cterm': 2,      'gui': s:colorMap['Green'],         'name': 'Green'}
let s:Yellow        = {'cterm': 3,      'gui': s:colorMap['Yellow'],        'name': 'Yellow'}
let s:Blue          = {'cterm': 4,      'gui': s:colorMap['Blue'],          'name': 'Blue'}
let s:Magenta       = {'cterm': 5,      'gui': s:colorMap['Magenta'],       'name': 'Magenta'}
let s:Cyan          = {'cterm': 6,      'gui': s:colorMap['Cyan'],          'name': 'Cyan'}
let s:White         = {'cterm': 7,      'gui': s:colorMap['White'],         'name': 'White'}
let s:BrightBlack   = {'cterm': 8,      'gui': s:colorMap['BrightBlack'],   'name': 'Bright Black'}
let s:BrightRed     = {'cterm': 9,      'gui': s:colorMap['BrightRed'],     'name': 'Bright Red'}
let s:BrightGreen   = {'cterm': 10,     'gui': s:colorMap['BrightGreen'],   'name': 'Bright Green'}
let s:BrightYellow  = {'cterm': 11,     'gui': s:colorMap['BrightYellow'],  'name': 'Bright Yellow'}
let s:BrightBlue    = {'cterm': 12,     'gui': s:colorMap['BrightBlue'],    'name': 'Bright Blue'}
let s:BrightMagenta = {'cterm': 13,     'gui': s:colorMap['BrightMagenta'], 'name': 'Bright Magenta'}
let s:BrightCyan    = {'cterm': 14,     'gui': s:colorMap['BrightCyan'],    'name': 'Bright Cyan'}
let s:BrightWhite   = {'cterm': 15,     'gui': s:colorMap['BrightWhite'],   'name': 'Bright White'}
let s:NONE          = {'cterm': 'NONE', 'gui': 'NONE',                     'name': 'NONE'}

function! s:colorFor(group, fg, bg, style, ...) abort

  " Some groups get a special/undercurl color, some don't.
  " Therefore, the 5th argument is optional.
  "
  " Defaults to 'NONE' when not provided.
  "
  " Groups which use the 5th argument include:
  "   - SpellBad
  "   - SpellCap
  "   - ...
  "
  if a:0 >= 1
    let l:ctermul = a:1.cterm
    let l:guisp = a:1.gui
  else
    let l:ctermul = 'NONE'
    let l:guisp = 'NONE'
  endif

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
call s:colorFor('Normal',            s:Black,                s:White,               'none')     " Normal text
call s:colorFor('NonText',           s:White,                s:NONE,                'none')     " Characters that don't exist in the text (e.g. '~' after end of buffer)
call s:colorFor('EndOfBuffer',       s:White,                s:NONE,                'none')     " Filler lines (~) after the last line in the buffer
call s:colorFor('Ignore',            s:NONE,                 s:NONE,                'none')     " Left blank, hidden
call s:colorFor('Underlined',        s:NONE,                 s:NONE,                'underline')" Text that stands out, HTML links
call s:colorFor('Bold',              s:NONE,                 s:NONE,                'bold')     " Bold text (in markup)
call s:colorFor('Italic',            s:NONE,                 s:NONE,                'italic')   " Italic text (in markup)
call s:colorFor('StatusLine',        s:BrightWhite,          s:BrightBlack,         'none')     " Status line of current window
call s:colorFor('StatusLineNC',      s:BrightWhite,          s:White,               'none')     " Status lines of non-current windows
call s:colorFor('StatusLineTerm',    s:BrightWhite,          s:BrightBlack,         'none')     " Status line of current terminal window
call s:colorFor('StatusLineTermNC',  s:BrightWhite,          s:White,               'none')     " Status lines of non-current terminal windows
call s:colorFor('VertSplit',         s:BrightBlack,          s:NONE,                'none')     " Column separating vertically split windows
call s:colorFor('TabLine',           s:Black,                s:White,               'none')     " Tab pages line, not active tab page label
call s:colorFor('TabLineFill',       s:White,                s:NONE,                'none')     " Tab pages line, where there are no labels
call s:colorFor('TabLineSel',        s:White,                s:BrightYellow,        'none')     " Tab pages line, active tab page label
call s:colorFor('TabPanel',          s:Black,                s:White,               'none')     " TabPanel, not active tab page label
call s:colorFor('TabPanelFill',      s:White,                s:NONE,                'none')     " TabPanel, where there are no labels
call s:colorFor('TabPanelSel',       s:White,                s:BrightYellow,        'none')     " TabPanel, active tab page label
call s:colorFor('Terminal',          s:NONE,                 s:NONE,                'none')     " Terminal window
call s:colorFor('Title',             s:Blue,                 s:NONE,                'bold')     " Titles for output from :set all, :autocmd, etc.
call s:colorFor('CursorLine',        s:NONE,                 s:White,               'none')     " Screen line the cursor is on (when 'cursorline' is set)
call s:colorFor('Cursor',            s:White,                s:BrightWhite,         'none')     " Character under the cursor
call s:colorFor('lCursor',           s:White,                s:BrightWhite,         'none')     " Character under cursor when language-mapping is used
call s:colorFor('CursorIM',          s:White,                s:BrightWhite,         'none')     " Cursor in IME mode
call s:colorFor('CursorColumn',      s:NONE,                 s:White,               'none')     " Screen column the cursor is in (when 'cursorcolumn' is set)
call s:colorFor('LineNr',            s:BrightBlack,          s:NONE,                'none')     " Line number for :number and :# commands
call s:colorFor('LineNrAbove',       s:BrightBlack,          s:NONE,                'none')     " Line number above cursor (relativenumber)
call s:colorFor('LineNrBelow',       s:BrightBlack,          s:NONE,                'none')     " Line number below cursor (relativenumber)
call s:colorFor('CursorLineNr',      s:Cyan,                 s:NONE,                'none')     " Line number when 'cursorline' is set
call s:colorFor('CursorLineFold',    s:Black,                s:White,               'none')     " FoldColumn when 'cursorline' is set for cursor line
call s:colorFor('CursorLineSign',    s:Black,                s:White,               'none')     " SignColumn when 'cursorline' is set for cursor line
call s:colorFor('helpLeadBlank',     s:NONE,                 s:NONE,                'none')     " Leading blank in help files
call s:colorFor('helpNormal',        s:NONE,                 s:NONE,                'none')     " Normal text in help files
call s:colorFor('Visual',            s:BrightWhite,          s:BrightBlack,         'bold')     " Visual mode selection
call s:colorFor('VisualNOS',         s:BrightWhite,          s:BrightBlack,         'bold')     " Visual mode selection when vim is "Not Owning the Selection"
call s:colorFor('Pmenu',             s:BrightWhite,          s:White,               'none')     " Popup menu: normal item
call s:colorFor('PmenuSbar',         s:Black,                s:BrightBlack,         'none')     " Popup menu: scrollbar
call s:colorFor('PmenuSel',          s:BrightWhite,          s:BrightBlack,         'bold')     " Popup menu: selected item
call s:colorFor('PmenuThumb',        s:NONE,                 s:Black,               'none')     " Popup menu: scrollbar thumb
call s:colorFor('PmenuKind',         s:BrightCyan,           s:White,               'none')     " Popup menu: normal item "kind"
call s:colorFor('PmenuKindSel',      s:BrightCyan,           s:BrightBlack,         'bold')     " Popup menu: selected item "kind"
call s:colorFor('PmenuExtra',        s:BrightBlack,          s:White,               'none')     " Popup menu: normal item "extra text"
call s:colorFor('PmenuExtraSel',     s:Black,                s:BrightBlack,         'bold')     " Popup menu: selected item "extra text"
call s:colorFor('PmenuMatch',        s:BrightYellow,         s:White,               'none')     " Popup menu: matched text in normal item
call s:colorFor('PmenuMatchSel',     s:BrightYellow,         s:BrightBlack,         'bold')     " Popup menu: matched text in selected item
call s:colorFor('PmenuBorder',       s:Black,                s:White,               'none')     " Popup menu: border characters
call s:colorFor('PmenuShadow',       s:NONE,                 s:White,               'none')     " Popup menu: shadow
call s:colorFor('ComplMatchIns',     s:BrightYellow,         s:NONE,                'underline')" Matched text of the currently inserted completion
call s:colorFor('PreInsert',         s:BrightBlack,          s:NONE,                'none')     " Text inserted when "preinsert" is in 'completeopt'
call s:colorFor('PopupSelected',     s:BrightWhite,          s:BrightBlack,         'bold')     " Popup window created with popup_menu()
call s:colorFor('PopupNotification', s:BrightYellow,         s:NONE,                'none')     " Popup window created with popup_notification()
call s:colorFor('FoldColumn',        s:Black,                s:NONE,                'none')     " 'foldcolumn' indicator column
call s:colorFor('Folded',            s:BrightBlue,           s:NONE,                'none')     " Line used for closed folds
call s:colorFor('WildMenu',          s:BrightWhite,          s:White,               'none')     " Current match in 'wildmenu' completion
call s:colorFor('SpecialKey',        s:White,                s:NONE,                'none')     " Unprintable characters: text displayed differently from what it is

call s:colorFor('IncSearch',         s:White,                s:Red,                 'none')     " 'incsearch' highlighting; also for replaced text with :s///c
call s:colorFor('CurSearch',         s:White,                s:Yellow,              'none')     " Current search match under cursor
call s:colorFor('Search',            s:White,                s:BrightYellow,        'none')     " Last search pattern highlighting
call s:colorFor('Directory',         s:NONE,                 s:NONE,                'none')     " Directory names in listings and other special names
call s:colorFor('MatchParen',        s:Yellow,               s:White,               'underline')" Matching parenthesis/bracket under cursor and its match
call s:colorFor('MessageWindow',     s:BrightYellow,         s:NONE,                'none')     " Messages popup window used by :echowindow
call s:colorFor('ModeMsg',           s:White,                s:BrightWhite,         'bold')     " 'showmode' message (e.g. -- INSERT --)
call s:colorFor('MsgArea',           s:NONE,                 s:NONE,                'none')     " Command-line area
call s:colorFor('MoreMsg',           s:Blue,                 s:NONE,                'none')     " 'more-prompt' (-- More --)
call s:colorFor('Question',          s:Blue,                 s:NONE,                'none')     " Hit-enter prompt and yes/no questions
call s:colorFor('ColorColumn',       s:NONE,                 s:NONE,                'none')     " Columns set with 'colorcolumn'
call s:colorFor('SignColumn',        s:Black,                s:NONE,                'none')     " Column where signs are displayed
call s:colorFor('QuickFixLine',      s:BrightCyan,           s:White,               'none')     " Current quickfix item in the quickfix window
call s:colorFor('Conceal',           s:BrightBlack,          s:NONE,                'none')     " Placeholder characters for concealed text
call s:colorFor('ToolbarLine',       s:BrightWhite,          s:White,               'none')     " Toolbar background
call s:colorFor('ToolbarButton',     s:BrightWhite,          s:BrightBlack,         'none')     " Toolbar buttons
call s:colorFor('debugPC',           s:Black,                s:NONE,                'none')     " Current line in :terminal debugger
call s:colorFor('debugBreakpoint',   s:BrightBlack,          s:NONE,                'none')     " Breakpoint marker in :terminal debugger
call s:colorFor('ErrorMsg',          s:Red,                  s:NONE,                'bold,italic')" Error messages on the command line
call s:colorFor('WarningMsg',        s:BrightYellow,         s:NONE,                'none')     " Warning messages
call s:colorFor('DiffAdd',           s:White,                s:BrightGreen,         'none')     " Diff mode: added line
call s:colorFor('DiffChange',        s:White,                s:BrightBlue,          'none')     " Diff mode: changed line
call s:colorFor('DiffDelete',        s:White,                s:BrightRed,           'none')     " Diff mode: deleted line
call s:colorFor('DiffText',          s:White,                s:BrightCyan,          'none')     " Diff mode: changed text within a changed line
call s:colorFor('DiffTextAdd',       s:White,                s:BrightCyan,          'none')     " Diff mode: added text within a changed line
call s:colorFor('diffAdded',         s:BrightGreen,          s:NONE,                'none')     " Diff syntax: added line
call s:colorFor('diffRemoved',       s:BrightRed,            s:NONE,                'none')     " Diff syntax: removed line
call s:colorFor('diffChanged',       s:BrightBlue,           s:NONE,                'none')     " Diff syntax: changed line
call s:colorFor('diffOldFile',       s:BrightYellow,         s:NONE,                'none')     " Diff syntax: old file name
call s:colorFor('diffNewFile',       s:BrightMagenta,        s:NONE,                'none')     " Diff syntax: new file name
call s:colorFor('diffFile',          s:BrightBlue,           s:NONE,                'none')     " Diff syntax: file header
call s:colorFor('diffLine',          s:Black,                s:NONE,                'none')     " Diff syntax: line info (@@...@@)
call s:colorFor('diffIndexLine',     s:BrightCyan,           s:NONE,                'none')     " Diff syntax: index line
call s:colorFor('healthError',       s:Red,                  s:NONE,                'none')     " :checkhealth error
call s:colorFor('healthSuccess',     s:Green,                s:NONE,                'none')     " :checkhealth success
call s:colorFor('healthWarning',     s:Yellow,               s:NONE,                'none')     " :checkhealth warning

" Spelling
call s:colorFor('SpellBad',          s:NONE,                 s:NONE,                'undercurl',   s:Red)          " Word not recognized by spellchecker
call s:colorFor('SpellCap',          s:NONE,                 s:NONE,                'undercurl',   s:Blue)         " Word should start with capital letter
call s:colorFor('SpellLocal',        s:NONE,                 s:NONE,                'undercurl',   s:Cyan)         " Word recognized as used in another region
call s:colorFor('SpellRare',         s:NONE,                 s:NONE,                'undercurl',   s:Magenta)      " Rare word

" Syntax
call s:colorFor('Comment',           s:BrightBlack,          s:NONE,                'italic')   " Any comment
call s:colorFor('Constant',          s:NONE,                 s:NONE,                'none')     " Any constant
call s:colorFor('String',            s:NONE,                 s:NONE,                'none')     " String constant
call s:colorFor('Character',         s:NONE,                 s:NONE,                'none')     " Character constant: 'c', '\n'
call s:colorFor('Number',            s:NONE,                 s:NONE,                'none')     " Number constant: 234, 0xff
call s:colorFor('Boolean',           s:NONE,                 s:NONE,                'none')     " Boolean constant (true, false)
call s:colorFor('Float',             s:NONE,                 s:NONE,                'none')     " Floating point constant: 2.3e10
call s:colorFor('Identifier',        s:NONE,                 s:NONE,                'none')     " Variable name
call s:colorFor('Function',          s:NONE,                 s:NONE,                'none')     " Function name
call s:colorFor('Statement',         s:NONE,                 s:NONE,                'none')     " Any statement (if, do, for, etc.)
call s:colorFor('Conditional',       s:NONE,                 s:NONE,                'none')     " if, then, else, endif, switch, etc.
call s:colorFor('Repeat',            s:NONE,                 s:NONE,                'none')     " for, do, while, etc.
call s:colorFor('Label',             s:NONE,                 s:NONE,                'none')     " case, default, etc.
call s:colorFor('Operator',          s:NONE,                 s:NONE,                'none')     " Operators (sizeof, +, *, etc.)
call s:colorFor('Keyword',           s:NONE,                 s:NONE,                'none')     " Any other keyword
call s:colorFor('Exception',         s:NONE,                 s:NONE,                'none')     " try, catch, throw
call s:colorFor('PreProc',           s:NONE,                 s:NONE,                'none')     " Generic preprocessor
call s:colorFor('Include',           s:NONE,                 s:NONE,                'none')     " #include preprocessor
call s:colorFor('Define',            s:NONE,                 s:NONE,                'none')     " Preprocessor #define
call s:colorFor('Macro',             s:NONE,                 s:NONE,                'none')     " Macro definitions
call s:colorFor('PreCondit',         s:NONE,                 s:NONE,                'none')     " Preprocessor #if, #else, #endif, etc.
call s:colorFor('Type',              s:NONE,                 s:NONE,                'none')     " int, long, char, etc.
call s:colorFor('StorageClass',      s:NONE,                 s:NONE,                'none')     " static, register, volatile, etc.
call s:colorFor('Structure',         s:NONE,                 s:NONE,                'none')     " struct, union, enum, etc.
call s:colorFor('Typedef',           s:NONE,                 s:NONE,                'none')     " A typedef
call s:colorFor('Special',           s:NONE,                 s:NONE,                'none')     " Special symbol (e.g. escape characters)
call s:colorFor('SpecialChar',       s:NONE,                 s:NONE,                'none')     " Special character in a constant
call s:colorFor('Tag',               s:NONE,                 s:NONE,                'none')     " You can use CTRL-] on this
call s:colorFor('Delimiter',         s:NONE,                 s:NONE,                'none')     " Character that needs attention
call s:colorFor('SpecialComment',    s:NONE,                 s:NONE,                'none')     " Special things inside a comment
call s:colorFor('Debug',             s:NONE,                 s:NONE,                'none')     " Debugging statements
call s:colorFor('Error',             s:NONE,                 s:NONE,                'none')     " Any erroneous construct
call s:colorFor('Todo',              s:NONE,                 s:NONE,                'bold')     " TODO, FIXME, XXX, etc.
call s:colorFor('BoldItalic',        s:NONE,                 s:NONE,                'bold,italic')" Bold and italic text (in markup)
call s:colorFor('Added',             s:NONE,                 s:NONE,                'none')     " Added line in a diff
call s:colorFor('Changed',           s:NONE,                 s:NONE,                'none')     " Changed line in a diff
call s:colorFor('Removed',           s:NONE,                 s:NONE,                'none')     " Removed line in a diff

" Neovim-specific
if has('nvim')
  call s:colorFor('NormalFloat',       s:BrightWhite,          s:White,               'none')     " Normal text in floating windows
  call s:colorFor('FloatBorder',       s:Black,                s:White,               'none')     " Border of floating windows
  call s:colorFor('FloatShadow',       s:BrightWhite,          s:White,               'none')     " Shadow behind floating windows
endif
