set background=dark "or light
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "mine"
set t_Co=256

highlight Boolean             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsClass          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalConstant guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalVariable guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsImport         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsMember         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Character           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Comment             guifg=#c2b680 ctermfg=186                           gui=none cterm=none
highlight Conditional         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Constant            guifg=#afe091 ctermfg=150                           gui=none cterm=none
highlight Cursor              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CursorColumn        guifg=#eeeeee ctermfg=255 guibg=#3f3f3f ctermbg=237 gui=none cterm=none
highlight CursorLine          guifg=#eeeeee             guibg=#3f3f3f ctermbg=237 gui=none cterm=none
highlight Debug               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Define              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DefinedName         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Delimiter           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DiffAdd             guifg=#dcdccc ctermfg=187 guibg=#008b00 ctermbg=28  gui=none cterm=none
highlight DiffChange          guifg=#dcdccc ctermfg=187 guibg=#00008b ctermbg=18  gui=none cterm=none
highlight DiffDelete          guifg=#dcdccc ctermfg=187 guibg=#8b0000 ctermbg=88  gui=none cterm=none
highlight DiffText            guifg=#dcdccc ctermfg=187 guibg=#0000cd ctermbg=20  gui=bold cterm=bold
highlight Directory           guifg=#d4b064 ctermfg=179                           gui=none cterm=none
highlight EnumerationName     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationValue    guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Error               guifg=#f07070 ctermfg=167                           gui=none cterm=none
highlight ErrorMsg            guifg=#f07070 ctermfg=167                           gui=bold cterm=bold
highlight Exception           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Float               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight FoldColumn          guifg=#c2b680 ctermfg=186                           gui=none cterm=none
highlight Folded              guifg=#c2b680 ctermfg=186 guibg=#101010 ctermbg=233 gui=none cterm=none
highlight Function            guifg=#dcdccc ctermfg=187                           gui=none cterm=none
highlight Identifier          guifg=#dabfa5 ctermfg=180                           gui=none cterm=none
highlight Ignore              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight IncSearch           guifg=#eeeeee ctermfg=255 guibg=#866a4f ctermbg=137 gui=none cterm=none
highlight Include             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Keyword             guifg=#dcdccc ctermfg=187                           gui=none cterm=none
highlight Label               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight LineNr              guifg=#9f8f80 ctermfg=137               ctermbg=0   gui=none cterm=none
highlight LocalVariable       guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Macro               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight MatchParen          guifg=#eeeeee ctermfg=255 guibg=#008b8b ctermbg=30  gui=none cterm=none
highlight ModeMsg             guifg=#eeeeee ctermfg=255                           gui=bold cterm=bold
highlight MoreMsg             guifg=#dabfa5 ctermfg=180                           gui=bold cterm=bold
highlight NonText             guifg=#9f8f80 ctermfg=137                           gui=bold cterm=bold
highlight Normal              guifg=#dcdccc ctermfg=187 guibg=#2a2a2a ctermbg=235 gui=none cterm=none
highlight Number              guifg=#dcdccc ctermfg=187                           gui=none cterm=none
highlight Operator            guifg=#dcdccc ctermfg=187                           gui=none cterm=none
highlight PMenu               guifg=#000000 ctermfg=0   guibg=#a78869 ctermbg=137 gui=none cterm=none
highlight PMenuSbar           guifg=#000000 ctermfg=0   guibg=#b99f86 ctermbg=180 gui=none cterm=none
highlight PMenuSel            guifg=#000000 ctermfg=0   guibg=#c0aa94 ctermbg=180 gui=none cterm=none
highlight PMenuThumb          guifg=#000000 ctermfg=0   guibg=#f7f7f1 ctermbg=230 gui=none cterm=none
highlight PreCondit           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight PreProc             guifg=#c2aed0 ctermfg=140                           gui=none cterm=none
highlight Question            guifg=#dabfa5 ctermfg=180                           gui=bold cterm=bold
highlight Repeat              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Search              guifg=#eeeeee ctermfg=255 guibg=#c0aa94 ctermbg=180 gui=none cterm=none
highlight SignColumn          guifg=#c2b680 ctermfg=186                           gui=none cterm=none
highlight Special             guifg=#d4b064 ctermfg=179                           gui=none cterm=none
highlight SpecialChar         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialComment      guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialKey          guifg=#d4b064 ctermfg=179                           gui=none cterm=none
highlight SpellBad            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellCap            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellLocal          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellRare           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Statement           guifg=#e0af91 ctermfg=180                           gui=bold cterm=bold
highlight StatusLine          guifg=#f7f7f1 ctermfg=230 guibg=#736559 ctermbg=137 gui=bold cterm=bold
highlight StatusLineNC        guifg=#f7f7f1 ctermfg=230 guibg=#564d43 ctermbg=137 gui=none cterm=none
highlight StorageClass        guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight String              guifg=#dcdccc ctermfg=187                           gui=none cterm=none
highlight Structure           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLine             guifg=#f7f7f1 ctermfg=230 guibg=#564d43 ctermbg=137 gui=underline cterm=underline
highlight TabLineFill         guifg=#f7f7f1 ctermfg=230 guibg=#564d43 ctermbg=137 gui=underline cterm=underline
highlight TabLineSel          guifg=#f7f7f1 ctermfg=230                           gui=bold cterm=bold
highlight Tag                 guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Title               guifg=#f7f7f1 ctermfg=230 guibg=#000000 ctermbg=0   gui=bold cterm=bold
highlight Todo                guifg=#dcdccc ctermfg=187 guibg=#aed0ae ctermbg=151 gui=none cterm=none
highlight Type                guifg=#dabfa5 ctermfg=180                           gui=bold cterm=bold
highlight Typedef             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Underlined          guifg=#d4b064 ctermfg=179                           gui=underline cterm=underline
highlight Union               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VertSplit           guifg=#f7f7f1 ctermfg=230 guibg=#564d43 ctermbg=137 gui=none cterm=none
highlight Visual              guifg=#000000 ctermfg=0   guibg=#5f5f5f ctermbg=59  gui=none cterm=none
highlight VisualNOS           guifg=#c0aa94 ctermfg=180                           gui=bold,underline cterm=bold,underline
highlight WarningMsg          guifg=#f07070 ctermfg=167                           gui=none cterm=none
highlight WildMenu            guifg=#eeeeee ctermfg=255 guibg=#c0aa94 ctermbg=180 gui=bold cterm=bold
highlight pythonBuiltin       guifg=#dcdccc ctermfg=187                           gui=none cterm=none
