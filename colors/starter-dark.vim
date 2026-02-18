" starter-dark.vim - A dark starter colorscheme
"
" Colormap options:
"   gruvbox_light, solarized_light,
"   tango, gruvbox_dark, solarized_dark, nord, dracula,
"   tokyo_night, catppuccin_mocha, one_dark, dark, light

hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

let g:colors_name = 'starter-dark'

set termguicolors

let s:selectedColorMap = 'dark'

let s:c = starter#colors#load(s:selectedColorMap)

" Editor Elements
call starter#colors#hi('Normal',            s:c.White,         s:c.Black,        'none')        " Normal text
call starter#colors#hi('NonText',           s:c.Black,         s:c.NONE,         'none')        " Characters that don't exist in the text (e.g. '~' after end of buffer)
call starter#colors#hi('EndOfBuffer',       s:c.Black,         s:c.NONE,         'none')        " Filler lines (~) after the last line in the buffer
call starter#colors#hi('Ignore',            s:c.NONE,          s:c.NONE,         'none')        " Left blank, hidden
call starter#colors#hi('Underlined',        s:c.NONE,          s:c.NONE,         'underline')   " Text that stands out, HTML links
call starter#colors#hi('Bold',              s:c.NONE,          s:c.NONE,         'bold')        " Bold text (in markup)
call starter#colors#hi('Italic',            s:c.NONE,          s:c.NONE,         'italic')      " Italic text (in markup)
call starter#colors#hi('StatusLine',        s:c.BrightWhite,   s:c.BrightBlack,  'none')        " Status line of current window
call starter#colors#hi('StatusLineNC',      s:c.BrightWhite,   s:c.Black,        'none')        " Status lines of non-current windows
call starter#colors#hi('StatusLineTerm',    s:c.BrightWhite,   s:c.BrightBlack,  'none')        " Status line of current terminal window
call starter#colors#hi('StatusLineTermNC',  s:c.BrightWhite,   s:c.Black,        'none')        " Status lines of non-current terminal windows
call starter#colors#hi('VertSplit',         s:c.BrightBlack,   s:c.NONE,         'none')        " Column separating vertically split windows
call starter#colors#hi('TabLine',           s:c.White,         s:c.Black,        'none')        " Tab pages line, not active tab page label
call starter#colors#hi('TabLineFill',       s:c.Black,         s:c.NONE,         'none')        " Tab pages line, where there are no labels
call starter#colors#hi('TabLineSel',        s:c.Black,         s:c.BrightYellow, 'none')        " Tab pages line, active tab page label
call starter#colors#hi('TabPanel',          s:c.White,         s:c.Black,        'none')        " TabPanel, not active tab page label
call starter#colors#hi('TabPanelFill',      s:c.Black,         s:c.NONE,         'none')        " TabPanel, where there are no labels
call starter#colors#hi('TabPanelSel',       s:c.Black,         s:c.BrightYellow, 'none')        " TabPanel, active tab page label
call starter#colors#hi('Terminal',          s:c.NONE,          s:c.NONE,         'none')        " Terminal window
call starter#colors#hi('Title',             s:c.Blue,          s:c.NONE,         'bold')        " Titles for output from :set all, :autocmd, etc.
call starter#colors#hi('CursorLine',        s:c.NONE,          s:c.Black,        'none')        " Screen line the cursor is on (when 'cursorline' is set)
call starter#colors#hi('Cursor',            s:c.Black,         s:c.BrightWhite,  'none')        " Character under the cursor
call starter#colors#hi('lCursor',           s:c.Black,         s:c.BrightWhite,  'none')        " Character under cursor when language-mapping is used
call starter#colors#hi('CursorIM',          s:c.Black,         s:c.BrightWhite,  'none')        " Cursor in IME mode
call starter#colors#hi('CursorColumn',      s:c.NONE,          s:c.Black,        'none')        " Screen column the cursor is in (when 'cursorcolumn' is set)
call starter#colors#hi('LineNr',            s:c.BrightBlack,   s:c.NONE,         'none')        " Line number for :number and :# commands
call starter#colors#hi('LineNrAbove',       s:c.BrightBlack,   s:c.NONE,         'none')        " Line number above cursor (relativenumber)
call starter#colors#hi('LineNrBelow',       s:c.BrightBlack,   s:c.NONE,         'none')        " Line number below cursor (relativenumber)
call starter#colors#hi('CursorLineNr',      s:c.Cyan,          s:c.NONE,         'none')        " Line number when 'cursorline' is set
call starter#colors#hi('CursorLineFold',    s:c.White,         s:c.Black,        'none')        " FoldColumn when 'cursorline' is set for cursor line
call starter#colors#hi('CursorLineSign',    s:c.White,         s:c.Black,        'none')        " SignColumn when 'cursorline' is set for cursor line
call starter#colors#hi('helpLeadBlank',     s:c.NONE,          s:c.NONE,         'none')        " Leading blank in help files
call starter#colors#hi('helpNormal',        s:c.NONE,          s:c.NONE,         'none')        " Normal text in help files
call starter#colors#hi('Visual',            s:c.BrightWhite,   s:c.BrightBlack,  'bold')        " Visual mode selection
call starter#colors#hi('VisualNOS',         s:c.BrightWhite,   s:c.BrightBlack,  'bold')        " Visual mode selection when vim is "Not Owning the Selection"
call starter#colors#hi('Pmenu',             s:c.BrightWhite,   s:c.Black,        'none')        " Popup menu: normal item
call starter#colors#hi('PmenuSbar',         s:c.White,         s:c.BrightBlack,  'none')        " Popup menu: scrollbar
call starter#colors#hi('PmenuSel',          s:c.BrightWhite,   s:c.BrightBlack,  'bold')        " Popup menu: selected item
call starter#colors#hi('PmenuThumb',        s:c.NONE,          s:c.White,        'none')        " Popup menu: scrollbar thumb
call starter#colors#hi('PmenuKind',         s:c.BrightCyan,    s:c.Black,        'none')        " Popup menu: normal item "kind"
call starter#colors#hi('PmenuKindSel',      s:c.BrightCyan,    s:c.BrightBlack,  'bold')        " Popup menu: selected item "kind"
call starter#colors#hi('PmenuExtra',        s:c.BrightBlack,   s:c.Black,        'none')        " Popup menu: normal item "extra text"
call starter#colors#hi('PmenuExtraSel',     s:c.White,         s:c.BrightBlack,  'bold')        " Popup menu: selected item "extra text"
call starter#colors#hi('PmenuMatch',        s:c.BrightYellow,  s:c.Black,        'none')        " Popup menu: matched text in normal item
call starter#colors#hi('PmenuMatchSel',     s:c.BrightYellow,  s:c.BrightBlack,  'bold')        " Popup menu: matched text in selected item
call starter#colors#hi('PmenuBorder',       s:c.White,         s:c.Black,        'none')        " Popup menu: border characters
call starter#colors#hi('PmenuShadow',       s:c.NONE,          s:c.Black,        'none')        " Popup menu: shadow
call starter#colors#hi('ComplMatchIns',     s:c.BrightYellow,  s:c.NONE,         'underline')   " Matched text of the currently inserted completion
call starter#colors#hi('PreInsert',         s:c.BrightBlack,   s:c.NONE,         'none')        " Text inserted when "preinsert" is in 'completeopt'
call starter#colors#hi('PopupSelected',     s:c.BrightWhite,   s:c.BrightBlack,  'bold')        " Popup window created with popup_menu()
call starter#colors#hi('PopupNotification', s:c.BrightYellow,  s:c.NONE,         'none')        " Popup window created with popup_notification()
call starter#colors#hi('FoldColumn',        s:c.White,         s:c.NONE,         'none')        " 'foldcolumn' indicator column
call starter#colors#hi('Folded',            s:c.BrightBlue,    s:c.NONE,         'none')        " Line used for closed folds
call starter#colors#hi('WildMenu',          s:c.BrightWhite,   s:c.Black,        'none')        " Current match in 'wildmenu' completion
call starter#colors#hi('SpecialKey',        s:c.Black,         s:c.NONE,         'none')        " Unprintable characters: text displayed differently from what it is
call starter#colors#hi('IncSearch',         s:c.Black,         s:c.Red,          'none')        " 'incsearch' highlighting; also for replaced text with :s///c
call starter#colors#hi('CurSearch',         s:c.Black,         s:c.Yellow,       'none')        " Current search match under cursor
call starter#colors#hi('Search',            s:c.Black,         s:c.BrightYellow, 'none')        " Last search pattern highlighting
call starter#colors#hi('Directory',         s:c.NONE,          s:c.NONE,         'none')        " Directory names in listings and other special names
call starter#colors#hi('MatchParen',        s:c.Yellow,        s:c.Black,        'underline')   " Matching parenthesis/bracket under cursor and its match
call starter#colors#hi('MessageWindow',     s:c.BrightYellow,  s:c.NONE,         'none')        " Messages popup window used by :echowindow
call starter#colors#hi('ModeMsg',           s:c.Black,         s:c.BrightWhite,  'bold')        " 'showmode' message (e.g. -- INSERT --)
call starter#colors#hi('MsgArea',           s:c.NONE,          s:c.NONE,         'none')        " Command-line area
call starter#colors#hi('MoreMsg',           s:c.Blue,          s:c.NONE,         'none')        " 'more-prompt' (-- More --)
call starter#colors#hi('Question',          s:c.Blue,          s:c.NONE,         'none')        " Hit-enter prompt and yes/no questions
call starter#colors#hi('ColorColumn',       s:c.NONE,          s:c.NONE,         'none')        " Columns set with 'colorcolumn'
call starter#colors#hi('SignColumn',        s:c.White,         s:c.NONE,         'none')        " Column where signs are displayed
call starter#colors#hi('QuickFixLine',      s:c.BrightCyan,    s:c.Black,        'none')        " Current quickfix item in the quickfix window
call starter#colors#hi('Conceal',           s:c.BrightBlack,   s:c.NONE,         'none')        " Placeholder characters for concealed text
call starter#colors#hi('ToolbarLine',       s:c.BrightWhite,   s:c.Black,        'none')        " Toolbar background
call starter#colors#hi('ToolbarButton',     s:c.BrightWhite,   s:c.BrightBlack,  'none')        " Toolbar buttons
call starter#colors#hi('debugPC',           s:c.White,         s:c.NONE,         'none')        " Current line in :terminal debugger
call starter#colors#hi('debugBreakpoint',   s:c.BrightBlack,   s:c.NONE,         'none')        " Breakpoint marker in :terminal debugger
call starter#colors#hi('ErrorMsg',          s:c.Red,           s:c.NONE,         'bold,italic') " Error messages on the command line
call starter#colors#hi('WarningMsg',        s:c.BrightYellow,  s:c.NONE,         'none')        " Warning messages
call starter#colors#hi('DiffAdd',           s:c.Black,         s:c.BrightGreen,  'none')        " Diff mode: added line
call starter#colors#hi('DiffChange',        s:c.Black,         s:c.BrightBlue,   'none')        " Diff mode: changed line
call starter#colors#hi('DiffDelete',        s:c.Black,         s:c.BrightRed,    'none')        " Diff mode: deleted line
call starter#colors#hi('DiffText',          s:c.Black,         s:c.BrightCyan,   'none')        " Diff mode: changed text within a changed line
call starter#colors#hi('DiffTextAdd',       s:c.Black,         s:c.BrightCyan,   'none')        " Diff mode: added text within a changed line
call starter#colors#hi('diffAdded',         s:c.BrightGreen,   s:c.NONE,         'none')        " Diff syntax: added line
call starter#colors#hi('diffRemoved',       s:c.BrightRed,     s:c.NONE,         'none')        " Diff syntax: removed line
call starter#colors#hi('diffChanged',       s:c.BrightBlue,    s:c.NONE,         'none')        " Diff syntax: changed line
call starter#colors#hi('diffOldFile',       s:c.BrightYellow,  s:c.NONE,         'none')        " Diff syntax: old file name
call starter#colors#hi('diffNewFile',       s:c.BrightMagenta, s:c.NONE,         'none')        " Diff syntax: new file name
call starter#colors#hi('diffFile',          s:c.BrightBlue,    s:c.NONE,         'none')        " Diff syntax: file header
call starter#colors#hi('diffLine',          s:c.White,         s:c.NONE,         'none')        " Diff syntax: line info (@@...@@)
call starter#colors#hi('diffIndexLine',     s:c.BrightCyan,    s:c.NONE,         'none')        " Diff syntax: index line
call starter#colors#hi('healthError',       s:c.Red,           s:c.NONE,         'none')        " :checkhealth error
call starter#colors#hi('healthSuccess',     s:c.Green,         s:c.NONE,         'none')        " :checkhealth success
call starter#colors#hi('healthWarning',     s:c.Yellow,        s:c.NONE,         'none')        " :checkhealth warning

" Spelling
call starter#colors#hi('SpellBad',          s:c.NONE,          s:c.NONE,         'undercurl',   s:c.Red)      " Word not recognized by spellchecker
call starter#colors#hi('SpellCap',          s:c.NONE,          s:c.NONE,         'undercurl',   s:c.Blue)     " Word should start with capital letter
call starter#colors#hi('SpellLocal',        s:c.NONE,          s:c.NONE,         'undercurl',   s:c.Cyan)     " Word recognized as used in another region
call starter#colors#hi('SpellRare',         s:c.NONE,          s:c.NONE,         'undercurl',   s:c.Magenta)  " Rare word

" Syntax
call starter#colors#hi('Comment',           s:c.BrightBlack,   s:c.NONE,         'italic')      " Any comment
call starter#colors#hi('Constant',          s:c.NONE,          s:c.NONE,         'none')        " Any constant
call starter#colors#hi('String',            s:c.NONE,          s:c.NONE,         'none')        " String constant
call starter#colors#hi('Character',         s:c.NONE,          s:c.NONE,         'none')        " Character constant: 'c', '\n'
call starter#colors#hi('Number',            s:c.NONE,          s:c.NONE,         'none')        " Number constant: 234, 0xff
call starter#colors#hi('Boolean',           s:c.NONE,          s:c.NONE,         'none')        " Boolean constant (true, false)
call starter#colors#hi('Float',             s:c.NONE,          s:c.NONE,         'none')        " Floating point constant: 2.3e10
call starter#colors#hi('Identifier',        s:c.NONE,          s:c.NONE,         'none')        " Variable name
call starter#colors#hi('Function',          s:c.NONE,          s:c.NONE,         'none')        " Function name
call starter#colors#hi('Statement',         s:c.NONE,          s:c.NONE,         'none')        " Any statement (if, do, for, etc.)
call starter#colors#hi('Conditional',       s:c.NONE,          s:c.NONE,         'none')        " if, then, else, endif, switch, etc.
call starter#colors#hi('Repeat',            s:c.NONE,          s:c.NONE,         'none')        " for, do, while, etc.
call starter#colors#hi('Label',             s:c.NONE,          s:c.NONE,         'none')        " case, default, etc.
call starter#colors#hi('Operator',          s:c.NONE,          s:c.NONE,         'none')        " Operators (sizeof, +, *, etc.)
call starter#colors#hi('Keyword',           s:c.NONE,          s:c.NONE,         'none')        " Any other keyword
call starter#colors#hi('Exception',         s:c.NONE,          s:c.NONE,         'none')        " try, catch, throw
call starter#colors#hi('PreProc',           s:c.NONE,          s:c.NONE,         'none')        " Generic preprocessor
call starter#colors#hi('Include',           s:c.NONE,          s:c.NONE,         'none')        " #include preprocessor
call starter#colors#hi('Define',            s:c.NONE,          s:c.NONE,         'none')        " Preprocessor #define
call starter#colors#hi('Macro',             s:c.NONE,          s:c.NONE,         'none')        " Macro definitions
call starter#colors#hi('PreCondit',         s:c.NONE,          s:c.NONE,         'none')        " Preprocessor #if, #else, #endif, etc.
call starter#colors#hi('Type',              s:c.NONE,          s:c.NONE,         'none')        " int, long, char, etc.
call starter#colors#hi('StorageClass',      s:c.NONE,          s:c.NONE,         'none')        " static, register, volatile, etc.
call starter#colors#hi('Structure',         s:c.NONE,          s:c.NONE,         'none')        " struct, union, enum, etc.
call starter#colors#hi('Typedef',           s:c.NONE,          s:c.NONE,         'none')        " A typedef
call starter#colors#hi('Special',           s:c.NONE,          s:c.NONE,         'none')        " Special symbol (e.g. escape characters)
call starter#colors#hi('SpecialChar',       s:c.NONE,          s:c.NONE,         'none')        " Special character in a constant
call starter#colors#hi('Tag',               s:c.NONE,          s:c.NONE,         'none')        " You can use CTRL-] on this
call starter#colors#hi('Delimiter',         s:c.NONE,          s:c.NONE,         'none')        " Character that needs attention
call starter#colors#hi('SpecialComment',    s:c.NONE,          s:c.NONE,         'none')        " Special things inside a comment
call starter#colors#hi('Debug',             s:c.NONE,          s:c.NONE,         'none')        " Debugging statements
call starter#colors#hi('Error',             s:c.NONE,          s:c.NONE,         'none')        " Any erroneous construct
call starter#colors#hi('Todo',              s:c.NONE,          s:c.NONE,         'bold')        " TODO, FIXME, XXX, etc.
call starter#colors#hi('BoldItalic',        s:c.NONE,          s:c.NONE,         'bold,italic') " Bold and italic text (in markup)
call starter#colors#hi('Added',             s:c.NONE,          s:c.NONE,         'none')        " Added line in a diff
call starter#colors#hi('Changed',           s:c.NONE,          s:c.NONE,         'none')        " Changed line in a diff
call starter#colors#hi('Removed',           s:c.NONE,          s:c.NONE,         'none')        " Removed line in a diff

" Neovim-specific
if has('nvim')
  call starter#colors#hi('NormalFloat',       s:c.BrightWhite,   s:c.Black,        'none')        " Normal text in floating windows
  call starter#colors#hi('FloatBorder',       s:c.White,         s:c.Black,        'none')        " Border of floating windows
  call starter#colors#hi('FloatShadow',       s:c.BrightWhite,   s:c.Black,        'none')        " Shadow behind floating windows
endif
