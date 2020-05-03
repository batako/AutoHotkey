; おまじない
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;==============================
; リンク
;==============================

; Winのショートカット一覧: https://pc-karuma.net/windows-10-keyboard-shortcuts-list/
; ホットキー             : http://ahkwiki.net/Hotkeys


;==============================
; Change Key の設定
;==============================
; DL: https://forest.watch.impress.co.jp/library/software/changekey/
; Left Ctrl       -> F13
; Hankaku/Zenkaku -> F14
; Muhenkan        -> Left Ctrl
; Henkan          -> F15
; Katakana        -> F16

; |Key|ScanCode|
; |---|--------|
; |F13| 0x0064 |
; |F14| 0x0065 |
; |F15| 0x0066 |
; |F16| 0x0067 |
; |F17| 0x0068 |
; |F18| 0x0069 |
; |F19| 0x006A |
; |F20| 0x006B |
; |F21| 0x006C |
; |F22| 0x006D |
; |F23| 0x006E |
; |F24| 0x0076 |


;==============================
; キーの指定方法のメモ
;==============================
;　SHIFT       +
;　Ctrl        ^
;　Alt         !
;　Windowsキー #
;　無変換キー  vk1D
;　変換キー    vk1C
;　;           vkBB
;　:           vkBA
;　,           vkBC
;　.           vkBE
;　Space       vk20
;　その他はAutoHotKey Wikiのキーリスト参照


;==============================
; Left Ctrl
;==============================

F13 & Space::Send, {Blind}^{Space} ; IME-オン/オフ

; カーソル操作
F13 & i::Send,    {Blind}{Up}
F13 & j::Send,    {Blind}{Left}
F13 & k::Send,    {Blind}{Down}
F13 & l::Send,    {Blind}{Right}
F13 & a::Send,    {Blind}{Home}  ; 文頭
F13 & e::Send,    {Blind}{End}   ; 文末
F13 & @::Send,    {Blind}{PgUp}  ; 行頭
F13 & vkBA::Send, {Blind}{PgDn}  ; 行末

; テキスト操作
F13 & h::Send, {Blind}{Backspace}
F13 & d::Send, {Blind}{Del}
F13 & o::Send, {Blind}{Enter}
F13 & s::Send, {Blind}+{home} ; 文頭まで選択
F13 & f::Send, {Blind}+{End}  ; 文末まで選択
;F13 & w::Send, {Blind}{End}+{Home}{BS} ; 一行削除
;F13 & r::Send, {Blind}{End}+{Home}^{c} ; 一行コピー
;F13 & e::Send, {Blind}{End}+{Home}^{x} ; 一行切り取り
;^Enter::Send, {Blind}{End}{Enter}      ; 下に一行挿入


;「無変換+上段キー」でファンクションキーの動作をさせる
F13 & 1::Send, {Blind}{F1}
F13 & 2::Send, {Blind}{F2}
F13 & 3::Send, {Blind}{F3}
F13 & 4::Send, {Blind}{F4}
F13 & 5::Send, {Blind}{F5}
F13 & 6::Send, {Blind}{F6}
F13 & 7::Send, {Blind}{F7}
F13 & 8::Send, {Blind}{F8}
F13 & 9::Send, {Blind}{F9}
F13 & 0::Send, {Blind}{F10}
F13 & -::Send, {Blind}{F11}
F13 & ^::Send, {Blind}{F12}


;==============================
; Hankaku/Zenkaku
;==============================

F14 & e::Send, #{e} ; エクスプローラーを起動
F14 & s::Send, #{s} ; WebとWindows（アプリ、ファイル、設定）を検索
F14 & t::Send, #{t} ; タスクバーでアプリを切り替える

; 該当するタスクバーのアプリを起動
F14 & 1::Send, #{1}
F14 & 2::Send, #{2}
F14 & 3::Send, #{3}
F14 & 4::Send, #{4}
F14 & 5::Send, #{5}
F14 & 6::Send, #{6}
F14 & 7::Send, #{7}
F14 & 8::Send, #{8}
F14 & 9::Send, #{9}

; ウィンドウ操作
F14 & j::Send, #{Left}  ; 左寄せ
F14 & l::Send, #{Right} ; 右寄せ
F14 & i::Send, #{Up}    ; 最大化
F14 & k::Send, #{Down}  ; 元に戻す or 最小化
;F14 & +i::Send, #{Up}   ; アクティブなウィンドウを上下いっぱいに表示


;=============================
; Henkan
;=============================

; Tab移動など
F15 & o::Send, {Blind}^{Tab}
F15 & u::Send, {Blind}^+{Tab}
F15 & l::AltTab
F15 & j::ShiftAltTab
F15 & n::Send, {Blind}!{Left}
F15 & ,::Send, {Blind}!{Right}
;F13 & F15::Send,{Blind}{vkF3sc029}


;==============================
; Katakana
;==============================

; 仮想デスクトップ切り替え
F16 & a::Send, #^{d}     ; 新しい仮想デスクトップを作成
F16 & w::Send, #^{F4}    ; 使用中の仮想デスクトップを閉じる
F16 & l::Send, #^{Right} ; 右の仮想デスクトップに切り替え
F16 & j::Send, #^{Left}  ; 左の仮想デスクトップに切り替え
F16 & i::Send, #{Tab}    ; タスクビューを表示（アプリ切り替え）


;==============================
; その他
;==============================

; ウィンドウ操作
^q::Send, !{F4} ; 閉じる（「^w」が閉じない時用）

; 便利ツール
+^!s::Send, #+s ; スクリーンショット

; マウス操作
!u::  MouseClick, Left
!o::  MouseClick, Right
!i::  MouseMove   0, -50, 0, R
!+i:: MouseMove   0, -10, 0, R
!k::  MouseMove   0,  50, 0, R
!+k:: MouseMove   0,  10, 0, R
!j::  MouseMove -50,   0, 0, R
!+j:: MouseMove -10,   0, 0, R
!l::  MouseMove  50,   0, 0, R
!+l:: MouseMove  10,   0, 0, R


;sandSの設定
;Space Up:: Send, % "{Shift Up}" (A_TimeSincePriorHotkey < 200 ? " " : "")
;+Space:: Send, +{Space}
;Space:: RShift

; ウィンドウ移動 [F15 -> 変換]
;F15 & Tab::Send, #+{Right}
