;========== タイトル画面 ==========

; 1. ゲーム開始またはエンディング後、全ての変数を初期化
; アイテム所持変数
[eval exp="f.mimizu = false"]
[eval exp="f.straw = false"]
[eval exp="f.juice = false"]
; 各ページクリア変数
[eval exp="f.page1_clear = false"]
[eval exp="f.page2_clear = false"]
[eval exp="f.page3_clear = false"]
[eval exp="f.page4_clear = false"]
[eval exp="f.page5_clear = false"]

; 2. 画面を整理し、キー/マウス操作を有効化
[cm]
[clearfix]
[start_keyconfig]
@layopt layer=message0 visible=false

; 3. タイトル背景とBGMを設定
[bg storage="Umi_Fix.png" time="100"]
[playbgm storage="Main_Thema修正.mp3" loop="true"]

; 4. ゲームタイトル
[button graphic="Title_Text.png" x="500" y="100" width="675" height="100" z-index="12"]

; 5. ゲーム開始ボタン
[button x=150 y=500 graphic="Main.png" enterimg="Main_Input.png" target="*gamestart"]
[s]

;========== ゲーム開始処理 ==========
*gamestart
; イントロ画面へ移動
@jump storage="scene1.ks"
