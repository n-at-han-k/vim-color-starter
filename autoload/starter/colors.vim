" starter/colors.vim - Shared colormaps and highlight helper
" Maintainer: Nathan
" Version: 2.0.0
" License: MIT

let s:colormaps = {}

let s:colormaps.tango = {
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

let s:colormaps.gruvbox_dark = {
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

let s:colormaps.gruvbox_light = {
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

let s:colormaps.solarized_dark = {
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

let s:colormaps.solarized_light = {
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

let s:colormaps.nord = {
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

let s:colormaps.dracula = {
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

let s:colormaps.tokyo_night = {
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

let s:colormaps.catppuccin_mocha = {
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

let s:colormaps.one_dark = {
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


" starter#colors#load(colormap_name) -> dict of color defs
"
" Returns a dictionary of named color entries, each with 'cterm', 'gui', and
" 'name' keys, plus a special 'NONE' entry. The colormap_name must be one of:
"   tango, gruvbox_dark, gruvbox_light, solarized_dark, solarized_light,
"   nord, dracula, tokyo_night, catppuccin_mocha, one_dark
function! starter#colors#load(colormap_name) abort
  let l:map = s:colormaps[a:colormap_name]
  let l:c = {}
  let l:c.Black         = {'cterm': 0,      'gui': l:map['Black'],         'name': 'Black'}
  let l:c.Red           = {'cterm': 1,      'gui': l:map['Red'],           'name': 'Red'}
  let l:c.Green         = {'cterm': 2,      'gui': l:map['Green'],         'name': 'Green'}
  let l:c.Yellow        = {'cterm': 3,      'gui': l:map['Yellow'],        'name': 'Yellow'}
  let l:c.Blue          = {'cterm': 4,      'gui': l:map['Blue'],          'name': 'Blue'}
  let l:c.Magenta       = {'cterm': 5,      'gui': l:map['Magenta'],       'name': 'Magenta'}
  let l:c.Cyan          = {'cterm': 6,      'gui': l:map['Cyan'],          'name': 'Cyan'}
  let l:c.White         = {'cterm': 7,      'gui': l:map['White'],         'name': 'White'}
  let l:c.BrightBlack   = {'cterm': 8,      'gui': l:map['BrightBlack'],   'name': 'Bright Black'}
  let l:c.BrightRed     = {'cterm': 9,      'gui': l:map['BrightRed'],     'name': 'Bright Red'}
  let l:c.BrightGreen   = {'cterm': 10,     'gui': l:map['BrightGreen'],   'name': 'Bright Green'}
  let l:c.BrightYellow  = {'cterm': 11,     'gui': l:map['BrightYellow'],  'name': 'Bright Yellow'}
  let l:c.BrightBlue    = {'cterm': 12,     'gui': l:map['BrightBlue'],    'name': 'Bright Blue'}
  let l:c.BrightMagenta = {'cterm': 13,     'gui': l:map['BrightMagenta'], 'name': 'Bright Magenta'}
  let l:c.BrightCyan    = {'cterm': 14,     'gui': l:map['BrightCyan'],    'name': 'Bright Cyan'}
  let l:c.BrightWhite   = {'cterm': 15,     'gui': l:map['BrightWhite'],   'name': 'Bright White'}
  let l:c.NONE          = {'cterm': 'NONE', 'gui': 'NONE',                 'name': 'NONE'}
  return l:c
endfunction


" starter#colors#hi(group, fg, bg, style [, underline_color])
"
"   group           - highlight group name (string)
"   fg              - foreground color (color dict or NONE dict)
"   bg              - background color (color dict or NONE dict)
"   style           - text decoration string (see options below)
"   underline_color - optional color for underline-style decorations (color dict)
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
function! starter#colors#hi(group, fg, bg, style, ...) abort
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
