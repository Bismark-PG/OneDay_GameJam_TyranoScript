;========== 8月30日 (Page 5) ==========
[cm]
[clearfix]

[if exp="f.page5_clear == true"]
    [bg storage="Shot02.png" time="100"]
[else]
    [bg storage="Shot01.png" time="100"]
[endif]
[playse storage="people_ambient_SE.mp3" loop="true" buf="1"]

@layopt layer=message0 visible=true
[position layer=message0 page=fore frame="Message_Box_Fixed.png" margint="0" marginl="50" marginr="50" marginb="30"]

[if exp="f.page5_clear == true"]
#
8/30(土)[r]
きょうは　なつまつりに　いきました。[r]
しゃてきを　やりました。
ジュースを　とれました。[r]
うれしかったです。
[else]
#
8/30(土)[r]
きょうは　〇〇〇〇〇に　いきました。[r]
しゃてきを　やりました。
〇〇〇〇を　とれました。[r]
うれしかったです。
[endif]

; アイテムインベントリ表示
[if exp="f.mimizu == true"]
    [button graphic="mimizu_item.png" x="160" y="400" width="150" height="100" z-index="12"]
[endif]

[if exp="f.straw == true"]
    [button graphic="straw.png" x="315" y="400" width="75" height="100" z-index="12"]
[endif]

[if exp="f.juice == true"]
    [button graphic="juice.png" x="400" y="400" width="50" height="100" z-index="12"]
[else]
    [button graphic="juice.png" x="525" y="375" width="50" height="100" storage="item.ks" target="*item_juice" z-index="12"]
[endif]

; ボタン
[button graphic="Button_Back_Fix.png" enterimg="Button_Back_Input_Fix.png" x=1100 y=50 target="*go_prev"]
[button graphic="Done.png" enterimg="Done_Input.png" x=1100 y=305 target="*go_ending"]
[s]

*go_prev
[stopse buf="1"]
[playse storage="page_back_SE.mp3" buf="0"]
@jump storage="8_23.ks"

*go_ending
[stopse buf="1"]
[playse storage="Page_many_SE.mp3" buf="0"]
@jump storage="endig.ks"
