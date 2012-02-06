" Vim color scheme
"
" Name: cody.vim
" Maintainer: Cody Frazer <frazercr@gmail.com>
" License: public domain
" Version: 0.2
" Last Change: 12.29.2011

" Boilerplate
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cody"

" Clear default highlight groups
highlight clear SpecialKey
highlight clear SignColumn
highlight clear FoldColumn

" Generic
highlight Normal      guifg=#D9D9D9 guibg=#33332E gui=NONE
highlight Visual      guifg=NONE    guibg=#66665B gui=NONE
highlight Cursor      guifg=NONE    guibg=#808072 gui=NONE
highlight Folded      guifg=#6DA9D9 guibg=#66665B gui=NONE
highlight Search      guifg=#33332E guibg=#D9CF6D gui=NONE
highlight IncSearch   guifg=#33332E guibg=#6DA9D9 gui=NONE
highlight MatchParen  guifg=NONE    guibg=#5C7A99 gui=NONE
highlight NonText     guifg=#4D4D45 guibg=NONE    gui=NONE
highlight Comment     guifg=#6DA9D9 guibg=#4D4D45 gui=italic
highlight ColorColumn guifg=NONE    guibg=#4D4D45 gui=NONE
highlight Directory   guifg=#6DA9D9 guibg=NONE    gui=NONE
highlight ErrorMsg    guifg=#D9D9D9 guibg=#D96D6D gui=NONE
highlight Constant    guifg=#D96D6D guibg=NONE gui=bold
highlight Conceal     guifg=#996CD9 guibg=NONE gui=NONE
highlight link Todo          IncSearch
highlight link SpecialKey    NonText
highlight link SignColumn    Folded
highlight link FoldColumn    Folded
highlight link netrwClassify Directory

" PHP
highlight phpIdentifier   guifg=#66DFFF guibg=NONE gui=NONE
highlight phpStorageClass guifg=#996CD9 guibg=NONE gui=NONE
highlight phpStringSingle guifg=#72D96C guibg=NONE gui=NONE
highlight phpStructure    guifg=#6DA9D9 guibg=NONE gui=NONE
highlight phpNumber       guifg=#2187D9 guibg=NONE gui=NONE
highlight link Delimiter       phpStructure
highlight link None            phpStringSingle
highlight link phpKeyword      phpStructure
highlight link phpOperator     phpStructure
highlight link phpRelation     phpStructure
highlight link phpStringDouble phpStringSingle
highlight link phpType         phpStructure
highlight link phpVarSelector  phpIdentifier 

" Ruby
highlight rubySymbol                 guifg=#D96D6D guibg=NONE gui=NONE
highlight rubyFunction               guifg=#2187D9 guibg=NONE gui=bold,underline
highlight rubyString                 guifg=#72D96C guibg=NONE gui=NONE
highlight rubyStringEscape           guifg=#1F801A guibg=NONE gui=bold
highlight rubyInteger                guifg=#2187D9 guibg=NONE gui=NONE
highlight rubyAccess                 guifg=#996CD9 guibg=NONE gui=NONE
highlight rubyControl                guifg=#6DA9D9 guibg=NONE gui=NONE
highlight rubyInstanceVariable       guifg=#66DFFF guibg=NONE gui=NONE
highlight rubyInterpolation          guifg=#FFB066 guibg=NONE gui=NONE
highlight rubyInterpolationDelimiter guifg=#D97A21 guibg=NONE gui=NONE
highlight link rubyBlockParameter           rubyInstanceVariable
highlight link rubyPredefinedVariable       rubyInstanceVariable
highlight link rubyPredefinedConstant       rubyInstanceVariable
highlight link rubyAttribute                rubyControl
highlight link rubyDefine                   rubyControl
highlight link rubyInclude                  rubyControl
highlight link rubyKeyword                  rubyControl
highlight link rubyPseudoVariable           rubyControl
highlight link rubyConditional              rubyControl
highlight link rubyConditionalModifier      rubyControl
highlight link rubySharpBang                rubyControl
highlight link rubyRailsRenderMethod        rubyControl
highlight link rubyRailsARMethod            rubyControl
highlight link rubyRailsARAssociationMethod rubyControl
highlight link rubyRailsARCallbackMethod    rubyControl
highlight link rubyRailsARClassMethod       rubyControl
highlight link rubyRailsARValidationMethod  rubyControl
highlight link rubyRailsMigrationMethod     rubyControl
highlight link rubyRailsMethod              rubyControl
highlight link rubyRailsRakeMethod          rubyControl
highlight link rubyRailsFilterMethod        rubyControl
highlight link erubyDelimiter               Delimiter
highlight link erubyRailsRenderMethod       rubyControl
highlight link erubyRailsHelperMethod       rubyControl
highlight link erubyRailsUserClass          Constant
highlight link rubyFloat                    rubyInteger
highlight link rubyStringDelimiter          rubyString
highlight link rubyComment                  Comment
highlight link rubyConstant                 Constant 
highlight link rubyClassDeclaration         Constant
highlight link rubyRailsUserClass           Constant
highlight link rubyRailsClass               Constant
highlight link rubyBlockParameter           rubyInstanceVariable
highlight link rubyTodo                     IncSearch

" Project Plugin
highlight projectDescription guifg=#6DA9D9 guibg=NONE gui=NONE
highlight projectDirectory   guifg=#D96D6D guibg=NONE gui=NONE
