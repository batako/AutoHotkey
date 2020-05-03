; おまじない
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;==============================
;=           リンク
;==============================

; Winのショートカット一覧: https://pc-karuma.net/windows-10-keyboard-shortcuts-list/
; ホットキー             : http://ahkwiki.net/Hotkeys


;==============================
;=     Change Key の設定
;==============================
; DL: https://forest.watch.impress.co.jp/library/software/changekey/
; 左Ctrl    -> 無変換
; 無変換    -> 左Ctrl
; 全角/半角 -> F13
; 変換      -> F14

vk1D::Send, {Blind}{Ctrl}


;==============================
;=    キーの指定方法のメモ
;==============================
;　無変換キー vk1Dsc07B
;　SHIFT +
;　Ctrl ^
;　Alt !
;　;(セミコロン)vkBBsc027
;　:(コロン) vkBAsc028
;　,(カンマ) vkBCsc033
;　.(ピリオド) vkBEsc034
;　Space vk20sc039
;　その他はAutoHotKey Wikiのキーリスト参照


;==============================
;=       vk1D(無変換)
;==============================

vk1D & Space::Send, {Blind}^{Space} ; IME-オン/オフ

; カーソル操作
vk1D & i::Send,{Blind}{Up}
vk1D & j::Send,{Blind}{Left}
vk1D & k::Send,{Blind}{Down}
vk1D & l::Send,{Blind}{Right}
vk1D & a::Send, {Blind}{Home}    ; 文頭
vk1D & e::Send, {Blind}{End}     ; 文末
vk1D & @::Send, {Blind}{PgUp}    ; 行頭
vk1D & vkBA::Send, {Blind}{PgDn} ; 行末

; テキスト操作
vk1D & h::Send, {Blind}{Backspace}
vk1D & d::Send, {Blind}{Del}
vk1D & o::Send, {Blind}{Enter}
vk1D & s::Send, {Blind}+{home} ; 文頭まで選択
vk1D & f::Send, {Blind}+{End}  ; 文末まで選択
;vk1C & w::Send, {Blind}{End}+{Home}{BS} ; 一行削除
;vk1C & r::Send, {Blind}{End}+{Home}^{c} ; 一行コピー
;vk1C & e::Send, {Blind}{End}+{Home}^{x} ; 一行切り取り
;^Enter::Send, {Blind}{End}{Enter} ; 下に一行挿入

;「無変換+上段キー」でファンクションキーの動作をさせる
vk1D & 1::Send,{Blind}{F1}
vk1D & 2::Send,{Blind}{F2}
vk1D & 3::Send,{Blind}{F3}
vk1D & 4::Send,{Blind}{F4}
vk1D & 5::Send,{Blind}{F5}
vk1D & 6::Send,{Blind}{F6}
vk1D & 7::Send,{Blind}{F7}
vk1D & 8::Send,{Blind}{F8}
vk1D & 9::Send,{Blind}{F9}
vk1D & 0::Send,{Blind}{F10}
vk1D & -::Send,{Blind}{F11}
vk1D & ^::Send,{Blind}{F12}

; ウィンドウ操作
vk1D & w::Send, ^{w} ; 表示中のアプリを閉じる


;=============================
;=        vk1C(変換)
;=============================

;tab移動など
vk1C & o::Send,{Blind}^{Tab}
vk1C & u::Send,{Blind}^+{Tab}
vk1C & l::AltTab              ; 
vk1C & j::ShiftAltTab         ; 
vk1C & n::Send,{Blind}!{Left}
vk1C & ,::Send,{Blind}!{Right}
vk1D & vk1C::Send,{Blind}{vkF3sc029}


;==============================
;=    vkF4->F13(全角/半角)
;==============================

; 仮想デスクトップ切り替え
;F13 & a::Send, #^{d}     ; 新しい仮想デスクトップを作成
;F13 & w::Send, #^{F4}    ; 使用中の仮想デスクトップを閉じる
;F13 & f::Send, #^{Right} ; 右の仮想デスクトップに切り替え
;F13 & d::Send, #^{Left}  ; 左の仮想デスクトップに切り替え
;F13 & v::Send, #{Tab}    ; タスクビューを表示（アプリ切り替え）

F13 & e::Send, #{e} ; エクスプローラーを起動
F13 & s::Send, #{s} ; WebとWindows（アプリ、ファイル、設定）を検索
F13 & t::Send, #{t} ; タスクバーでアプリを切り替える

; 該当するタスクバーのアプリを起動
F13 & 1::Send, #{1}
F13 & 2::Send, #{2}
F13 & 3::Send, #{3}
F13 & 4::Send, #{4}
F13 & 5::Send, #{5}
F13 & 6::Send, #{6}
F13 & 7::Send, #{7}
F13 & 8::Send, #{8}
F13 & 9::Send, #{9}

; ウィンドウ操作
F13 & j::Send, #{Left}  ; 左寄せ
F13 & l::Send, #{Right} ; 右寄せ
F13 & i::Send, #{Up}    ; 最大化
F13 & k::Send, #{Down}  ; 元に戻す or 最小化
;F13 & +i::Send, #{Up}   ; アクティブなウィンドウを上下いっぱいに表示


;==============================
;=      vkF2->F14(Kana)
;==============================

; 仮想デスクトップ切り替え
F14 & a::Send, #^{d}     ; 新しい仮想デスクトップを作成
F14 & w::Send, #^{F4}    ; 使用中の仮想デスクトップを閉じる
F14 & l::Send, #^{Right} ; 右の仮想デスクトップに切り替え
F14 & j::Send, #^{Left}  ; 左の仮想デスクトップに切り替え
F14 & i::Send, #{Tab}    ; タスクビューを表示（アプリ切り替え）


;==============================
;=         その他
;==============================

; マウス操作
>!u:: MouseClick, Left
>!o:: MouseClick, Right
>!i:: MouseMove    0, -50, 0, R
>!+i:: MouseMove   0, -10, 0, R
>!k:: MouseMove    0,  50, 0, R
>!+k:: MouseMove   0,  10, 0, R
>!j:: MouseMove  -50,   0, 0, R
>!+j:: MouseMove -10,   0, 0, R
>!l:: MouseMove   50,   0, 0, R
>!+l:: MouseMove  10,   0, 0, R

; ウィンドウ操作
^q::Send, !{F4} ; 閉じる（「^w」が閉じない時用）

; 便利ツール
+^!s::Send, #+s ; スクリーンショット


;sandSの設定
;Space Up:: Send, % "{Shift Up}" (A_TimeSincePriorHotkey < 200 ? " " : "")
;+Space:: Send, +{Space}
;Space:: RShift

; ウィンドウ移動 [vk1C -> 変換]
;vk1C & Tab::Send, #+{Right}

