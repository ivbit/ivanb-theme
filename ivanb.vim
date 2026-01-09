" Copyright (c) 2023 Ivan Bityutskiy 
" 
" Permission to use, copy, modify, and distribute this software for any
" purpose with or without fee is hereby granted, provided that the above
" copyright notice and this permission notice appear in all copies.
" 
" THE SOFTWARE IS PROVIDED 'AS IS' AND THE AUTHOR DISCLAIMS ALL WARRANTIES
" WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
" MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
" ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
" WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
" ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
" OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

" Light colorscheme

" Remove all existing highlighting
highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'ivanb'
set background=light

" Highlight function
" highlight Normal ctermfg=Black ctermbg=LightGrey guifg=Black guibg=grey90
function! s:Hlt(grp, ctfg, gfg, ctbg, gbg, emphasis)
  execute "highlight " . a:grp . " ctermfg=" . a:ctfg . " guifg=" . a:gfg . " ctermbg=" . a:ctbg . " guibg=" . a:gbg . " cterm=" . a:emphasis . " gui=" . a:emphasis
endfunction

" Emphasis
let s:bold = 'bold'
let s:underline = 'underline'
let s:none = 'NONE'

" Background
let s:ctbgdefault = 231
let s:gbgdefault = '#FFFFFF'
let s:ctbgcurline = 255
let s:gbgcurline = '#EEEEEE'
let s:ctbgvisual = 252
let s:gbgvisual = '#D0D0D0'
let s:ctbgmenu = 255
let s:gbgmenu = '#EEEEEE'
let s:ctbgmatch = 228
let s:gbgmatch = '#FFFF87'
let s:ctbgsource = 16
let s:gbgsource = '#000000'

" Foreground
let s:ctfgprimary = 124
let s:gfgprimary = '#AF0000'

let s:ctfgcursor = 231
let s:gfgcursor = '#FFFFFF'

let s:ctfgsource = 16
let s:gfgsource = '#000000'
let s:ctfgkeyword = s:ctfgprimary
let s:gfgkeyword = s:gfgprimary
let s:ctfgstructure = s:ctfgprimary
let s:gfgstructure = s:gfgprimary
let s:ctfgscalar = 166
let s:gfgscalar = '#D75F00'
let s:ctfgstring = 19
let s:gfgstring = '#0000AF'
let s:ctfgfunction = 22
let s:gfgfunction = '#005F00'
let s:ctfgspecial = 90
let s:gfgspecial = '#870087'

let s:ctfgerror = 160
let s:gfgerror = '#D70000'

let s:ctfgcomment = 28
let s:gfgcomment = '#008700'

let s:ctfghtmltag = 16
let s:gfghtmltag = '#000000'

" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('Comment', s:ctfgcomment, s:gfgcomment, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Constant', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('String', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Character', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Number', s:ctfgscalar, s:gfgscalar, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Boolean', s:ctfgscalar, s:gfgscalar, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Float', s:ctfgscalar, s:gfgscalar, s:ctbgdefault, s:gbgdefault, s:none)
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('Function', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Statement', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Conditional', s:ctfgkeyword, s:gfgkeyword, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Repeat', s:ctfgkeyword, s:gfgkeyword, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Operator', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Keyword', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Exception', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('Include', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Define', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Macro', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('PreCondit', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('Type', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('StorageClass', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Structure', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('Typedef', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('Special', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('SpecialKey', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('SpecialChar', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Delimiter', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('SpecialComment', s:ctfgcomment, s:gfgcomment, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Debug', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Underlined', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:underline)
call s:Hlt('Error', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:underline)
call s:Hlt('Todo', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Question', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('Directory', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('CursorLine', s:none, s:none, s:ctbgcurline, s:gbgcurline, s:none)
call s:Hlt('MatchParen', s:ctfgsource, s:gfgsource, s:ctbgmatch, s:gbgmatch, s:bold)
call s:Hlt('ColorColumn', s:ctfgsource, s:gfgsource, s:ctbgcurline, s:gbgcurline, s:none)

" Interface highlighting
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('Normal', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Visual', s:none, s:none, s:ctbgvisual, s:gbgvisual, s:none)
call s:Hlt('Cursor', s:ctfgcursor, s:gfgcursor, s:ctbgsource, s:gbgsource, s:none)
call s:Hlt('iCursor', s:ctfgcursor, s:gfgcursor, s:ctbgsource, s:gbgsource, s:none)
call s:Hlt('LineNr', s:ctfgsource, s:gfgsource, s:ctbgcurline, s:gbgcurline, s:none)
call s:Hlt('NonText', s:ctfgcomment, s:gfgcomment, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('CursorLineNr', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('VertSplit', s:ctfgsource, s:gfgsource, s:ctbgcurline, s:gbgcurline, s:none)
call s:Hlt('ErrorMsg', s:ctfgerror, s:gfgerror, s:ctbgmenu, s:gbgmenu, s:none)
call s:Hlt('Title', s:ctfgscalar, s:gfgscalar, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Pmenu', s:ctfgsource, s:gfgsource, s:ctbgmenu, s:gbgmenu, s:none)
call s:Hlt('WildMenu', s:ctfgsource, s:gfgsource, s:ctbgmenu, s:gbgmenu, s:none)
call s:Hlt('Folded', s:ctfgsource, s:gfgstring, s:ctbgcurline, s:gbgcurline, s:none)
call s:Hlt('FoldColumn', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)

" C
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('cDefine', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)

" CSS
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('cssProp', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('cssBraces', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)

" Git Gutter A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks and partial hunks.
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('GitGutterAdd', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('GitGutterChange', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('GitGutterDelete', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('GitGutterChangeDelete', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('SignColumn', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)

" Go
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('goDirective', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('goDeclaration', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)

" HTML
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('htmlTagName', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('htmlTag', s:ctfghtmltag, s:gfghtmltag, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('Identifier', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('htmlArg', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('htmlSpecialChar', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)

" Javascript
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('javaScriptNull', s:ctfgscalar, s:gfgscalar, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('javaScriptBraces', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('javaScriptNumber', s:ctfgscalar, s:gfgscalar, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('jsObjectKey', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('javaScriptIdentifier', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)

" Json
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('Label', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)

" Lua
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('luaFunc', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('luaIn', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaFunction', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaStatement', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaRepeat', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaCondStart', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaTable', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaConstant', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaElse', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaCondElseif', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaCond', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('luaCondEnd', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)

" NERDTree
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('NERDTreeClosable', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('NERDTreeOpenable', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)

" PHP
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('phpDefine', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('phpIdentifier', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('bladeKeyword', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('PreProc', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)

" Powershell (needs plugin 'pshighlight')
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('ps1Variable', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('ps1Function', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('ps1CommentDoc', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)

" Python syntax highlighting
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('pythonFunction', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('pythonBuiltin', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('pythonDecoratorName', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('pythonDecorator', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('jinjaStatement', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('jinjaTagDelim', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('jinjaBlockName', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('jinjaVariable', s:ctfgscalar, s:gfgscalar, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('jinjaString', s:ctfgstring, s:gfgstring, s:ctbgdefault, s:gbgdefault, s:none)

" Ruby
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('rubyModule', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('rubyDefine', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('rubyClass', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('rubyFunction', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:bold)

" Tex
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('texInputCurlies', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('texInputFile', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('texSpecialChar', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:bold)

" Typescript
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('typescriptBraces', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('typescriptDecorators', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('typescriptEndColons', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)

" Visual Basic syntax highlighting
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('vbFunction', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('vbOperator', s:ctfgsource, s:gfgsource, s:ctbgdefault, s:gbgdefault, s:none)

" Vimscript syntax highlighting
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('vimOption', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('vimNotation', s:ctfgscalar, s:gfgscalar, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('vimBracket', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('vimVar', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('vimFBVar', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)

" XML
" Group, CtermFG, GuiFG, CtermBG, GuiBG, Emphasis
call s:Hlt('xmlTagName', s:ctfgfunction, s:gfgfunction, s:ctbgdefault, s:gbgdefault, s:bold)
call s:Hlt('xmlTag', s:ctfghtmltag, s:gfghtmltag, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('xmlEntity', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('xmlEntityPunct', s:ctfgprimary, s:gfgprimary, s:ctbgdefault, s:gbgdefault, s:none)
call s:Hlt('xmlAttrib', s:ctfgspecial, s:gfgspecial, s:ctbgdefault, s:gbgdefault, s:none)

" Bugfix
" highlight CursorLine cterm=none
" highlight Identifier cterm=none

