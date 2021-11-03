" Vim syntax file
" Language:     AZdara simple Markup
" Maintainer:   kedama
" Last Change:  2021 Nov 3

if exists("b:current_syntax")
  finish
endif

syn keyword     azmTodo         contained TODO FIXME
syn keyword     azmDang         contained WARN XXX
syn match       azmComment      "^;.*" contains=azmTodo,azmDang
syn match       azmComment      "\s;.*"ms=s+1 contains=azmTodo,azmDang
syn match       azmComment2     "^//.*" contains=azmTodo,azmDang
syn match       azmComment2     "\s//.*"ms=s+1 contains=azmTodo,azmDang
syn region      azmString       start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region      azmString       start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn region      azmCommentBlk   start="/\*" end="\*/" extend
syn match       azmHead1        "\s*# .\+"
syn match       azmHead2        "\s*## .\+"
syn match       azmHead3        "\s*### .\+"
syn match       azmHeadN        "\s*####\+ .\+"
syn match       azmBar          "^\s*---\+$"
syn match       azmSection      "^\s*\[.\+\]$"
syn match       azmT3New        "\s*\* ."me=e-1
syn match       azmT3Pgr        "\s*> ."me=e-1
syn match       azmT3Done       "\s*- ."me=e-1
syn match       azmT3Abort      "\s*x ."me=e-1
syn match       azmT3Pend       "\s*? ."me=e-1
syn region      azmT3Blk        start="<t3>" end="</t3>" contains=azmT3New,azmT3Pgr,azmT3Done,azmT3Abort,azmT3Pend extend
syn region      azmCodeBlk      start="```" end="```" extend
syn match       azmBullet1      "^\s*- ."me=e-1
syn match       azmBullet2      "^\s*ÅE."me=e-1
syn match       azmBullet3      "^\s*[0-9]\+\. ."me=e-1

hi def link azmComment        Comment
hi def link azmComment2       PreProc
hi def link azmCommentBlk     PreProc
hi def link azmTodo           Todo
hi def link azmDang           ErrorMsg
hi def link azmString         String
hi def link azmHead1          azmHlHead1
hi def link azmHead2          azmHlHead2
hi def link azmHead3          azmHlHead3
hi def link azmHeadN          azmHlHeadN
hi def link azmBar            azmHlBar
hi def link azmBullet1        azmHlBullet1
hi def link azmBullet2        azmHlBullet2
hi def link azmBullet3        azmHlBullet3
hi def link azmSection        azmHlSection
hi def link azmT3New          azmHlNew
hi def link azmT3Pgr          Question
hi def link azmT3Done         azmHlDone
hi def link azmT3Abort        Special
hi def link azmT3Pend         Title
hi def link azmT3Blk          azmHlT3Blk
hi def link azmCodeBlk        azmHlCodeBlk

highlight azmHlHead1      guifg=#FFD700 gui=standout
highlight azmHlHead2      guifg=#F0E68C gui=standout
highlight azmHlHead3      guifg=#BDB76B gui=standout
highlight azmHlHeadN      guifg=#A9A9A9 gui=standout
highlight azmHlBar        guifg=#808080
highlight azmHlBullet1    guifg=#6495ED
highlight azmHlBullet2    guifg=#6495ED
highlight azmHlBullet3    guifg=#6495ED
highlight azmHlSection    guifg=#00FF7F
highlight azmHlT3Blk      guifg=#FFFACD
highlight azmHlCodeBlk    guifg=#C0C0C0
highlight azmHlDone       guifg=#C0C0C0
highlight azmHlNew        guifg=#FF5050

let b:current_syntax = "azm"

" vim: ts=2 sw=2
