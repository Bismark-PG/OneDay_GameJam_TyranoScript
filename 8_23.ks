;========== 8月23日 (Page 4) ==========
[cm]
[clearfix]

[if exp="f.page4_clear == true"]
    [bg storage="Ice02.png" time="100"]
[else]
    [bg storage="Ice01.png" time="100"]
[endif]
[playse storage="semi_se.mp3" loop="true" buf="1"]

@layopt layer=message0 visible=true
[position layer=message0 page=fore frame="Message_Box_Fixed.png" margint="0" marginl="30" marginr="30" marginb="30"]

[if exp="f.page4_clear == true"]
#
8/23(土)[r]
きょうは　かきごおりを　たべました。[r]
かきごおりに　ジュースを　かけて　たべました。[r]
おいしかったです。
[else]
#
8/23(土)[r]
きょうは　かきごおりを　たべました。[r]
〇〇〇〇〇に　〇〇〇〇を　かけて　たべました。[r]
おいしかったです。
[endif]

; アイテムインベントリ表示
[if exp="f.mimizu == true"]
    [button graphic="mimizu_item.png" x="160" y="400" width="150" height="100" z-index="12"]
[endif]

[if exp="f.straw == true"]
    [button graphic="straw.png" x="315" y="400" width="75" height="100" z-index="12"]
[else]
    [button graphic="straw.png" x="50" y="350" width="75" height="100" storage="item.ks" target="*item_straw" z-index="12"]
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
[stopse buf="1"]
[playse storage="page_back_SE.mp3" buf="0"]
@jump storage="8_17.ks"

*go_next
[stopse buf="1"]
[playse storage="move_next_page_SE.mp3" buf="0"]
@jump storage="8_30.ks"

*go_draw
[stopse buf="1"]
@jump storage="item.ks" target="*use_page4_draw"
