;========== 8月17日 (Page 3) ==========
[cm]
[clearfix]

[if exp="f.page3_clear == true"]
    [bg storage="mimizu02.png" time="100"]
[else]
    [bg storage="mimizu01.png" time="100"]
[endif]

@layopt layer=message0 visible=true
[position layer=message0 page=fore frame="Message_Box_Fixed.png" margint="0" marginl="30" marginr="30" marginb="30"]

[if exp="f.page3_clear == true"]
#
8/17(日)　雨[r]
みちに　花が　さいていました。[r]
あめがふっていたので　うれしそうでした。[r]
ミミズが　土の中から　でてきていました。
[else]
#
8/17(日)　雨[r]
みちに　花が　さいていました。[r]
〇〇がふっていたので　うれしそうでした。[r]
〇〇〇が　土の中から　でてきていました。
[endif]

; アイテムインベントリ表示
[if exp="f.mimizu == true"]
    [button graphic="mimizu_item.png" x="160" y="400" width="150" height="100" z-index="12"]
[else]
    [button graphic="mimizu_item.png" x="400" y="290" width="300" height="225" storage="item.ks" target="*item_mimizu" z-index="12"]
[endif]

[if exp="f.straw == true"]
    [button graphic="straw.png" x="315" y="400" width="75" height="100" z-index="12"]
[endif]

[if exp="f.juice == true"]
    [button graphic="juice.png" x="400" y="400" width="50" height="100" z-index="12"]
[endif]

; ボタン
[button graphic="Button_Back_Fix.png" enterimg="Button_Back_Input_Fix.png" x=1100 y=50 target="*go_prev"]
[button graphic="Button_Next_Fix.png" enterimg="Button_Next_Input_Fix.png" x=1100 y=175 target="*go_next"]
[button graphic="Draw.png" enterimg="Draw_Input.png" x=1100 y=305 target="*go_draw"]
[s]

*go_prev
[playse storage="page_back_SE.mp3" buf="0"]
@jump storage="8_12.ks"

*go_next
[playse storage="move_next_page_SE.mp3" buf="0"]
@jump storage="8_23.ks"

*go_draw
@jump storage="item.ks" target="*use_page3_draw"