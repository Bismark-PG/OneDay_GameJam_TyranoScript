;========== 8月2日 (Page 1) ==========
[cm]
[clearfix]

[if exp="f.page1_clear == true"]
    [bg storage="Make02.png" time="100"]
[else]
    [bg storage="Make01.png" time="100"]
[endif]
[playse storage="Rain_se.mp3" loop="true" buf="1"]

@layopt layer=message0 visible=true
[position layer=message0 page=fore frame="Message_Box_Fixed.png" margint="0" marginl="30" marginr="30" marginb="30"]

[if exp="f.page1_clear == true"]
#
8/2(土)　雨[r]
きょうは　いえで　工さくを　しました。[r]
ストローを　つかって　ロボットを　つくりました。[r]
おとうさんと　いっしょに　つくりました。
[else]
#
8/2(土)　雨[r]
きょうは　いえで　工さくを　しました。[r]
〇〇〇〇を　つかって　〇〇を　つくりました。[r]
おとうさんと　いっしょに　つくりました。
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
[endif]

; ボタン
[button graphic="Button_Next_Fix.png" enterimg="Button_Next_Input_Fix.png" x=1100 y=175 target="*go_next"]
[button graphic="Draw.png" enterimg="Draw_Input.png" x=1100 y=305 target="*go_draw"]
[s]

*go_next
[stopse buf="1"]
[playse storage="move_next_page_SE.mp3" buf="0"]
@jump storage="8_12.ks"

*go_draw
[stopse buf="1"]
@jump storage="item.ks" target="*use_page1_draw"
