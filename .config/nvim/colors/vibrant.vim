" ~/.config/nvim/colors/vibrant.vim

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vibrant"

" Define color palette
let s:pink     = "#ff79c6"
let s:cyan     = "#8be9fd"
let s:yellow   = "#f1fa8c"
let s:bg       = "#282a36"
let s:bg_light = "#44475a"
let s:fg       = "#f8f8f2"

" Normal text
hi Normal guifg=s:fg guibg=s:bg

" Comments
hi Comment guifg=s:bg_light gui=italic

" Constants
hi Constant guifg=s:cyan

" Strings
hi String guifg=s:yellow

" Functions
hi Function guifg=s:pink

" Keywords
hi Keyword guifg=s:pink

" Variables
hi Identifier guifg=s:cyan

" Statements
hi Statement guifg=s:pink

" Types
hi Type guifg=s:yellow

" Underlined text
hi Underlined guifg=s:cyan gui=underline

" Ignore
hi Ignore guifg=s:bg_light

" Error
hi Error guifg=#ff5555 guibg=s:bg gui=bold

" Todo
hi Todo guifg=s:yellow guibg=s:bg_light gui=bold

" Line numbers
hi LineNr guifg=s:bg_light guibg=s:bg
hi CursorLineNr guifg=s:yellow guibg=s:bg

" Cursor Line
hi CursorLine guibg=s:bg_light

" Visual mode selection
hi Visual guibg=s:bg_light

" Search highlight
hi Search guifg=s:bg guibg=s:yellow
hi IncSearch guifg=s:bg guibg=s:pink

" Status line
hi StatusLine guifg=s:fg guibg=s:bg_light
hi StatusLineNC guifg=s:bg_light guibg=s:bg

" VertSplit
hi VertSplit guifg=s:bg_light guibg=s:bg

" Tab line
hi TabLine guifg=s:bg_light guibg=s:bg
hi TabLineFill guifg=s:bg guibg=s:bg
hi TabLineSel guifg=s:fg guibg=s:bg_light

" Pmenu (popup menu)
hi Pmenu guifg=s:fg guibg=s:bg_light
hi PmenuSel guifg=s:bg guibg=s:yellow
hi PmenuSbar guibg=s:bg_light
hi PmenuThumb guibg=s:yellow

" Git signs
hi GitGutterAdd guifg=s:cyan
hi GitGutterChange guifg=s:yellow
hi GitGutterDelete guifg=s:pink

" Diff
hi DiffAdd guifg=s:cyan guibg=s:bg
hi DiffChange guifg=s:yellow guibg=s:bg
hi DiffDelete guifg=s:pink guibg=s:bg
hi DiffText guifg=s:bg guibg=s:cyan

" Diagnostic
hi DiagnosticError guifg=s:pink
hi DiagnosticWarn guifg=s:yellow
hi DiagnosticInfo guifg=s:cyan
hi DiagnosticHint guifg=s:cyan

" LSP
hi LspReferenceText guibg=s:bg_light
hi LspReferenceRead guibg=s:bg_light
hi LspReferenceWrite guibg=s:bg_light

" Treesitter
hi TSPunctBracket guifg=s:fg
hi TSPunctDelimiter guifg=s:fg
hi TSPunctSpecial guifg=s:fg
hi TSConstant guifg=s:cyan
hi TSString guifg=s:yellow
hi TSFunction guifg=s:pink
hi TSKeyword guifg=s:pink
hi TSVariable guifg=s:cyan
hi TSComment guifg=s:bg_light gui=italic

" End of colorscheme

