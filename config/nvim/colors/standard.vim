set background=dark
set guifont="Hack Nerd Font Mono FC Ligatured Regular:h7"

" ============================================================================
" Text Markup
" ----------------------------------------------------------------------------

hi Normal                     guifg=#bab5a5   guibg=#191715       gui=NONE      ctermfg=257	ctermbg=256
hi NonText                    guifg=#bab5a5   guibg=NONE       gui=NONE      ctermfg=008
hi Comment                    guifg=#78302a   guibg=NONE       gui=NONE      ctermfg=009
hi Constant                   guifg=#076376   guibg=NONE       gui=NONE      ctermfg=003
hi Directory                  guifg=#076376   guibg=NONE       gui=NONE      ctermfg=014
hi Identifier                 guifg=#ba8013   guibg=NONE       gui=NONE      ctermfg=006
hi PreProc                    guifg=#b29d0f   guibg=NONE       gui=NONE      ctermfg=006
hi Type                       guifg=#166c25   guibg=NONE       gui=NONE      ctermfg=010
hi Conditional                guifg=#3798c8   guibg=NONE       gui=NONE      ctermfg=002
hi Operator                   guifg=#5b735f   guibg=NONE       gui=NONE      ctermfg=006
hi Exception                  guifg=#cb6200   guibg=NONE       gui=NONE      ctermfg=003
hi Repeat                     guifg=#5b5fa4   guibg=NONE       gui=NONE      ctermfg=013
hi Keyword                    guifg=#918c6e   guibg=NONE       gui=NONE      ctermfg=002
hi String                     guifg=#cb3a0b   guibg=NONE       gui=NONE      ctermfg=003
hi Character                  guifg=#d4b62b   guibg=NONE       gui=NONE      ctermfg=011
hi Boolean                    guifg=#91672a   guibg=NONE       gui=NONE      ctermfg=003
hi Number                     guifg=#2A5491   guibg=NONE       gui=NONE      ctermfg=003
hi Function                   guifg=#a9c43b   guibg=NONE       gui=NONE      ctermfg=012

" ============================================================================
" Highlighting
" ----------------------------------------------------------------------------

hi Cursor                     guifg=#bab5a5 guibg=NONE gui=NONE      ctermfg=008   ctermbg=015
hi CursorIM                   guifg=#bab5a5 guibg=NONE gui=NONE      ctermfg=008   ctermbg=015
hi CursorColumn               guifg=NONE    guibg=NONE gui=NONE      ctermfg=NONE  ctermbg=008     cterm=NONE
hi CursorLine                 guifg=#78302a    guibg=NONE gui=NONE      ctermfg=NONE  ctermbg=008     cterm=NONE
hi Visual                     guifg=#778088 guibg=#114159 gui=NONE      ctermfg=255   ctermbg=008
" hi VisualNOS                  guifg=<COLOR> guibg=<COLOR> gui=NONE      ctermfg=255   ctermbg=008
hi IncSearch                  guifg=#bab5a5 guibg=#392b1d gui=NONE      ctermfg=255   ctermbg=039
hi MatchParen                 guifg=#ba8013 guibg=#114159
hi Search                     guifg=#bab5a5 guibg=#392b1d gui=NONE      ctermfg=255   ctermbg=039
hi Error                      guifg=#b7211a guibg=NONE    gui=bold      ctermfg=009   ctermbg=NONE
hi Todo                       guifg=#36b5c9 guibg=NONE    gui=bold      ctermfg=226   ctermbg=NONE



" ============================================================================
" Messages
" ----------------------------------------------------------------------------

" hi Question                   guifg=<COLOR> guibg=NONE    gui=NONE      ctermfg=039   ctermbg=NONE
" hi ErrorMsg                   guifg=<COLOR> guibg=NONE    gui=bold      ctermfg=009   ctermbg=NONE    cterm=bold
" hi MoreMsg                    guifg=<COLOR> guibg=NONE    gui=NONE      ctermfg=002   ctermbg=NONE
" hi WarningMsg                 guifg=<COLOR> guibg=NONE    gui=NONE      ctermfg=226   ctermbg=NONE
 

" ============================================================================
" UI
" ----------------------------------------------------------------------------

hi ColorColumn                guifg=NONE guibg=#114159 gui=bold      ctermfg=250   ctermbg=008
hi Pmenu                      guifg=#bab5a5 guibg=#114159 gui=NONE      ctermfg=255   ctermbg=000
hi PmenuSel                   guifg=#778088 guibg=#392b1d gui=NONE      ctermfg=255   ctermbg=004
hi PmenuThumb                 guifg=#778088 guibg=#1c3212 gui=NONE      ctermfg=255   ctermbg=000
hi CursorLineNr               guifg=NONE guibg=#918c6e gui=bold      ctermfg=011   ctermbg=NONE    cterm=bold
hi LineNr                     guifg=#076376 guibg=NONE gui=NONE      ctermfg=010   ctermbg=257
hi SignColumn                 guifg=#78302a guibg=NONE    gui=NONE      ctermfg=257   ctermbg=257
hi VertSplit                  guifg=#2A5491 guibg=NONE    gui=NONE      ctermfg=008   ctermbg=000
hi WildMenu                   guifg=#bab5a5 guibg=#114159 gui=NONE      ctermfg=235   ctermbg=039
hi OverLength                 guifg=NONE    guibg=#166c25 gui=NONE      ctermfg=NONE  ctermbg=018

" ============================================================================
" Diff
" ----------------------------------------------------------------------------

hi DiffAdd                    guifg=#58934d guibg=NONE    gui=bold      ctermfg=002
hi DiffChange                 guifg=#918c6e guibg=NONE    gui=bold      ctermfg=226
hi DiffDelete                 guifg=#cb3a0b guibg=NONE    gui=bold      ctermfg=009
hi DiffText                   guifg=#778088 guibg=NONE    gui=bold      ctermfg=250



" ============================================================================
" Spelling
" ----------------------------------------------------------------------------

" hi SpellBad                   guisp=<COLOR> guibg=NONE    gui=undercurl  ctermfg=255  ctermbg=257   cterm=underline
" hi SpellCap                   guisp=<COLOR> guibg=NONE    gui=undercurl  ctermfg=007  ctermbg=257   cterm=underline
" hi SpellLocal                 guisp=<COLOR> guibg=NONE    gui=undercurl  ctermfg=5    ctermbg=257   cterm=underline
" hi SpellRare                  guisp=<COLOR> guibg=NONE    gui=undercurl  ctermfg=5    ctermbg=257   cterm=underline



" ============================================================================
" Others
" ----------------------------------------------------------------------------

" hi helpSpecial                guifg=<COLOR> guibg=NONE    gui=NONE      ctermfg=004
" hi helpHyperTextJump          guifg=<COLOR> guibg=NONE    gui=underline ctermfg=004
" hi helpNote                   guifg=<COLOR> guibg=NONE    gui=NONE      ctermfg=004

" Treesitter colors
hi TSFunction                 guifg=#a9c43b   guibg=NONE       gui=NONE      ctermfg=012
hi TSFunction                 guifg=#a9c44b guibg=NONE    gui=NONE      ctermfg=013
hi TSFuncBuiltin              guifg=#72b834 guibg=NONE    gui=NONE      ctermfg=012
hi TSMethod                   guifg=#b9d44b guibg=NONE    gui=NONE      ctermfg=013
hi TSKeywordFunction          guifg=#56a5b9 guibg=NONE    gui=NONE      ctermfg=011
hi TSKeywordReturn            guifg=#36b5c9 guibg=NONE    gui=NONE      ctermfg=011
hi TSConstructor              guifg=#99b45b guibg=NONE    cterm=bold    ctermfg=002

hi TSOperator                 guifg=#5b735f guibg=NONE    gui=NONE      ctermfg=011
hi TSKeywordOperator          guifg=#506350 guibg=NONE    gui=NONE      ctermfg=011
hi TSPunctBracket             guifg=#72b834 guibg=NONE    gui=NONE      ctermfg=257
hi TSPunctSpecial             guifg=#5b735f guibg=NONE    gui=NONE      ctermfg=257
hi TSPunctDelimiter           guifg=#5b735f guibg=NONE    gui=NONE      ctermfg=257
hi TSKeyword				  guifg=#918c6e guibg=NONE    gui=NONE      ctermfg=011
hi TSComment                  guifg=#78302a guibg=NONE    cterm=italic  ctermfg=009

hi TSRepeat                   guifg=#5b5fa4 guibg=NONE	  cterm=bold    ctermfg=011

hi TSBoolean                  guifg=#2078b8 guibg=NONE    gui=NONE      ctermfg=003
hi TSCharacter                guifg=#57a0b8 guibg=NONE    gui=NONE      ctermfg=011
hi TSConditional              guifg=#3798c8 guibg=NONE    gui=NONE      ctermfg=002
hi TSFloat                    guifg=#1f6fb0 guibg=NONE    gui=NONE      ctermfg=002
hi TSConstant                 guifg=#076376 guibg=NONE    gui=NONE      ctermfg=009
hi String                     guifg=#07a8cf   guibg=NONE       gui=NONE      ctermfg=003
hi StringEscape               guifg=#5b5fa4   guibg=NONE       gui=NONE      ctermfg=003
hi TSConstantBuiltin          guifg=#074a58 guibg=NONE    gui=NONE      ctermfg=009
hi TSConstantMacro            guifg=#175376 guibg=NONE    gui=NONE      ctermfg=009

hi TSNamespace                guifg=#ba8013 guibg=NONE    cterm=bold    ctermfg=002
hi TSInclude                  guifg=#ba7003 guibg=NONE    cterm=bold    ctermfg=002
hi TSError                    guifg=#b7211a guibg=NONE    cterm=bold    ctermfg=007   ctermbg=NONE
hi TSField                    guifg=#5b735f guibg=NONE    gui=NONE      ctermfg=006
hi TSParameter                guifg=#5f8668 guibg=NONE    gui=NONE      ctermfg=006
hi TSParameterReference       guifg=#5b895f guibg=NONE    gui=NONE      ctermfg=006
hi TSType                     guifg=#b46803 guibg=NONE    cterm=bold    ctermfg=002
hi TSTypeBuiltin              guifg=#9f6820 guibg=NONE    cterm=bold    ctermfg=002
hi TSVariable                 guifg=#bab5a5 guibg=NONE    cterm=bold    ctermfg=002
hi TSVariableBuiltin          guifg=#bfbc7f guibg=NONE    cterm=bold    ctermfg=002
