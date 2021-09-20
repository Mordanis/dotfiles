set background=dark

" ============================================================================
" Text Markup
" ----------------------------------------------------------------------------

hi Normal                     guifg=#CCCCCC guibg=#191919 gui=NONE      ctermfg=257	ctermbg=256
hi NonText                    guifg=#6A6A6A guibg=NONE    gui=NONE      ctermfg=008
hi Comment                    guifg=#555555 guibg=NONE    gui=NONE      ctermfg=009
hi Constant                   guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=003
hi Directory                  guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=014
hi Identifier                 guifg=#787878 guibg=NONE    gui=NONE      ctermfg=006
hi PreProc                    guifg=#787878 guibg=NONE    gui=NONE      ctermfg=006
hi Special                    guifg=#EFEFEF guibg=NONE    gui=NONE      ctermfg=013
hi Statement                  guifg=#CCCCCC guibg=NONE    gui=NONE      ctermfg=001
hi Title                      guifg=#CCCCCC guibg=NONE    gui=bold      ctermfg=006
hi Type                       guifg=#64B2DB guibg=NONE    gui=NONE      ctermfg=010
hi SpecialKey                 guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=006
hi Conditional                guifg=#64B2DB guibg=NONE    gui=NONE      ctermfg=002
hi Operator                   guifg=#AAAAAA guibg=NONE    gui=NONE      ctermfg=006
hi Exception                  guifg=#64B2DB guibg=NONE    gui=NONE      ctermfg=003
hi Label                      guifg=#64B2DB guibg=NONE    gui=NONE      ctermfg=013
hi Repeat                     guifg=#64B2DB guibg=NONE    gui=NONE      ctermfg=013
hi Keyword                    guifg=#64B2DB guibg=NONE    gui=NONE      ctermfg=002
hi String                     guifg=#5697B8 guibg=NONE    gui=NONE      ctermfg=003
hi Character                  guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=011
hi Boolean                    guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=003
hi Number                     guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=003
hi Function                   guifg=#EFEFEF guibg=NONE    gui=NONE      ctermfg=012
hi Underlined                 guifg=#CCCCCC guibg=NONE    gui=underline ctermfg=250

" ============================================================================
" Highlighting
" ----------------------------------------------------------------------------

hi Cursor                     guifg=#6A6A6A guibg=#EFEFEF gui=NONE      ctermfg=008   ctermbg=255
hi CursorIM                   guifg=#191919 guibg=#CCCCCC gui=NONE      ctermfg=008   ctermbg=255
hi CursorColumn               guifg=NONE    guibg=#292929 gui=NONE      ctermfg=NONE  ctermbg=008     cterm=NONE
hi CursorLine                 guifg=NONE    guibg=#292929 gui=NONE      ctermfg=NONE  ctermbg=008     cterm=NONE
hi Visual                     guifg=#EFEFEF guibg=#515151 gui=NONE      ctermfg=255   ctermbg=008
hi VisualNOS                  guifg=#EFEFEF guibg=#515151 gui=NONE      ctermfg=255   ctermbg=008
hi IncSearch                  guifg=#EFEFEF guibg=#64B2DB gui=NONE      ctermfg=255   ctermbg=039
hi MatchParen                 guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=008   ctermbg=001
hi Search                     guifg=#EFEFEF guibg=#40BDFF gui=NONE      ctermfg=255   ctermbg=039
hi Error                      guifg=#FF3D23 guibg=NONE    gui=bold      ctermfg=009   ctermbg=NONE
hi Todo                       guifg=#DEDD5A guibg=NONE    gui=bold      ctermfg=226   ctermbg=NONE



" ============================================================================
" Messages
" ----------------------------------------------------------------------------

hi Question                   guifg=#64B2DB guibg=NONE    gui=NONE      ctermfg=039   ctermbg=NONE
hi ErrorMsg                   guifg=#FF3D23 guibg=NONE    gui=bold      ctermfg=009   ctermbg=NONE    cterm=bold
hi MoreMsg                    guifg=#87BF19 guibg=NONE    gui=NONE      ctermfg=002   ctermbg=NONE
hi WarningMsg                 guifg=#DEDD5A guibg=NONE    gui=NONE      ctermfg=226   ctermbg=NONE
 

" ============================================================================
" UI
" ----------------------------------------------------------------------------

hi ColorColumn                guifg=#CCCCCC guibg=#292929 gui=bold      ctermfg=250   ctermbg=008
hi Pmenu                      guifg=#EFEFEF guibg=#191919 gui=NONE      ctermfg=255   ctermbg=000
hi PmenuSel                   guifg=#EFEFEF guibg=#40BDFF gui=NONE      ctermfg=255   ctermbg=004
hi PmenuThumb                 guifg=#EFEFEF guibg=#40BDFF gui=NONE      ctermfg=255   ctermbg=000
hi StatusLine                 guifg=#CCCCCC guibg=NONE    gui=NONE      ctermfg=250   ctermbg=NONE
hi StatusLineNC               guifg=#CCCCCC guibg=NONE    gui=NONE      ctermfg=250   ctermbg=NONE
hi CursorLineNr               guifg=#CCCCCC guibg=#292929 gui=bold      ctermfg=011   ctermbg=NONE    cterm=bold
hi TabLine                    guifg=#CCCCCC guibg=NONE    gui=NONE      ctermfg=250   ctermbg=NONE    cterm=NONE
hi TabLineFill                guifg=#CCCCCC guibg=NONE    gui=NONE      ctermfg=250   ctermbg=NONE    cterm=NONE
hi FoldColumn                 guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=235   ctermbg=039
hi Folded                     guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=235   ctermbg=039
hi LineNr                     guifg=#6A6A6A guibg=#0F0F0F gui=NONE      ctermfg=010   ctermbg=257
hi CursorLineNr               guifg=#6A6A6A guibg=#0F0F0F gui=NONE      ctermfg=002   ctermbg=008
hi SignColumn                 guifg=#EFEFEF guibg=NONE    gui=NONE      ctermfg=257   ctermbg=257
hi VertSplit                  guifg=#AAAAAA guibg=NONE    gui=NONE      ctermfg=008   ctermbg=000
hi WildMenu                   guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=235   ctermbg=039
hi OverLength                 guifg=NONE    guibg=#20272F gui=NONE      ctermfg=NONE  ctermbg=018

" ============================================================================
" Diff
" ----------------------------------------------------------------------------

hi DiffAdd                    guifg=#87BF19 guibg=NONE    gui=bold      ctermfg=002
hi DiffChange                 guifg=#DEDD5A guibg=NONE    gui=bold      ctermfg=226
hi DiffDelete                 guifg=#FF3D23 guibg=NONE    gui=bold      ctermfg=009
hi DiffText                   guifg=#CCCCCC guibg=NONE    gui=bold      ctermfg=250
hi GitGutterAddDefault        guifg=#87BF19 guibg=NONE    gui=NONE      ctermfg=002
hi GitGutterChangeDefault     guifg=#DEDD5A guibg=NONE    gui=NONE      ctermfg=226
hi GitGutterDeleteDefault     guifg=#FF3D23 guibg=NONE    gui=NONE      ctermfg=009



" ============================================================================
" Spelling
" ----------------------------------------------------------------------------

hi SpellBad                   guisp=#FF3D23 guibg=NONE    gui=undercurl  ctermfg=255  ctermbg=009   cterm=underline
hi SpellCap                   guisp=#87BF19 guibg=NONE    gui=undercurl  ctermfg=007  ctermbg=000   cterm=underline
hi SpellLocal                 guisp=#DEDD5A guibg=NONE    gui=undercurl  ctermfg=255  ctermbg=226   cterm=underline
hi SpellRare                  guisp=#DEDD5A guibg=NONE    gui=undercurl  ctermfg=255  ctermbg=226   cterm=underline



" ============================================================================
" Others
" ----------------------------------------------------------------------------

hi helpSpecial                guifg=#CCCCCC guibg=NONE    gui=NONE      ctermfg=250
hi helpHyperTextJump          guifg=#40BDFF guibg=NONE    gui=underline ctermfg=039
hi helpNote                   guifg=#CCCCCC guibg=NONE    gui=NONE      ctermfg=250

" CoC colors
hi CocRustTypeHint            guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=001
hi CocFadeOut                 guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=023 ctermbg=256
hi CocRustChainingHint        guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=009

" Treesitter colors
hi TSFuncBuiltin              guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=012
hi TSOperator                 guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=011
hi TSPunctBracket             guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=257
hi TSPunctSpecial             guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=257
hi TSPunctDelimiter           guifg=#191919 guibg=#40BDFF gui=NONE      ctermfg=257
hi TSRepeat                   guifg=#191919 guibg=#40BDFF cterm=bold    ctermfg=011
hi TSBoolean                  guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=003
hi TSCharacter                guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=011
hi TSComment                  guifg=#555555 guibg=NONE    cterm=italic  ctermfg=009
hi TSConditional              guifg=#64B2DB guibg=NONE    gui=NONE      ctermfg=002
hi TSConstant                 guifg=#40BDFF guibg=NONE    gui=NONE      ctermfg=009
hi TSError                    guifg=#FF3D23 guibg=NONE    cterm=bold    ctermfg=007   ctermbg=NONE
hi TSFunction                 guifg=#EFEFEF guibg=NONE    gui=NONE      ctermfg=013
hi TSKeywordOperator          guifg=#EFEFEF guibg=NONE    gui=NONE      ctermfg=011
hi TSField                    guifg=#EFEFEF guibg=NONE    gui=NONE      ctermfg=006
hi TSType                     guifg=#EFEFEF guibg=NONE    cterm=bold    ctermfg=002
