
let g:airline_theme="papercolor"

set termguicolors
set background=light
let g:gruvbox_italic=1
let g:gruvbox_italicize_strings=1
colorscheme gruvbox

" Override some of the Gruvbox colors since they're broken for Haskell
hi! link haskellType GruvboxBlue
hi! link haskellIdentifier GruvboxAqua
hi! link haskellSeparator GruvboxFg4
hi! link haskellDelimiter GruvboxOrange
hi! link haskellOperators GruvboxPurple

hi! link haskellBacktick GruvboxOrange
hi! link haskellStatement GruvboxPurple
hi! link haskellConditional GruvboxPurple

hi! link haskellLet GruvboxRed
hi! link haskellDefault GruvboxRed
hi! link haskellWhere GruvboxRed
hi! link haskellBottom GruvboxRedBold
hi! link haskellImportKeywords GruvboxPurpleBold
hi! link haskellDeclKeyword GruvboxOrange
hi! link haskellDecl GruvboxOrange
hi! link haskellDeriving GruvboxPurple
hi! link haskellAssocType GruvboxAqua

hi! link haskellNumber GruvboxAqua
hi! link haskellPragma GruvboxRedBold

hi! link haskellTH GruvboxAquaBold
hi! link haskellForeignKeywords GruvboxGreen
hi! link haskellKeyword GruvboxRed
hi! link haskellFloat GruvboxAqua
hi! link haskellInfix GruvboxPurple
hi! link haskellQuote GruvboxGreenBold
hi! link haskellShebang GruvboxYellowBold
hi! link haskellLiquid GruvboxPurpleBold
hi! link haskellQuasiQuoted GruvboxBlueBold
hi! link haskellRecursiveDo GruvboxPurlpe
hi! link haskellQuotedType GruvboxRed
hi! link haskellPreProc GruvboxFg4
hi! link haskellTypeRoles GruvboxRedBold
hi! link haskellTypeForall GruvboxRed
hi! link haskellPatternKeyword GruvboxBlue


