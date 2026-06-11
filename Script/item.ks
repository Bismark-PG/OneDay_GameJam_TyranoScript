;========== アイテム処理 ==========

;--- アイテム獲得処理 ---

*item_mimizu
[cm][clearfix]
[bg storage="mimizu02.png" time="0"]
[playse storage="get_item_SE.mp3" buf="0"]
[eval exp="f.mimizu = true"]
[eval exp="f.page3_clear = true"] 
; 17日の日記はミミズを見つけたらクリア
@layopt layer=message0 visible=true
#
「ミミズ」を手に入れた！[p][er]
[playse storage="move_next_page_SE.mp3" buf="0"]
@jump storage="8_17.ks"

*item_straw
[cm][clearfix]
[if exp="f.page4_clear == true"]
    [bg storage="Ice02.png" time="0"]
[else]
    [bg storage="Ice01.png" time="0"]
[endif]
[playse storage="get_item_SE.mp3" buf="0"]
[eval exp="f.straw = true"]
@layopt layer=message0 visible=true
#
「ストロー」を手に入れた！[p][er]
[playse storage="move_next_page_SE.mp3" buf="0"]
@jump storage="8_23.ks"

*item_juice
[cm][clearfix]
[bg storage="Shot02.png" time="0"]
[playse storage="get_item_SE.mp3" buf="0"]
[eval exp="f.juice = true"]
[eval exp="f.page5_clear = true"] 
; 30日の日記はジュースを取ったらクリア
@layopt layer=message0 visible=true
#
「ジュース」を手に入れた！[p][er]
[playse storage="move_next_page_SE.mp3" buf="0"]
@jump storage="8_30.ks"


;--- アイテム使用（日記修正）処理 ---

*use_page1_draw
; ページがクリア済みかまず確認
[if exp="f.page1_clear == true"]
    [cm][clearfix]
    [bg storage="Make02.png" time="0"]
    @layopt layer=message0 visible=true
    #
    思い出した！[p][er]
    [playse storage="page_back_SE.mp3" buf="0"]
    @jump storage="8_2.ks"
[else]
    ; クリア前ならアイテムを持っているか確認
    [if exp="f.straw == true"]
        [cm][clearfix]
        [bg storage="Make02.png" time="0"]
        [eval exp="f.page1_clear = true"]
        @layopt layer=message0 visible=true
        #
        日記を書き直した！[p][er]
        [playse storage="move_next_page_SE.mp3" buf="0"]
        @jump storage="8_2.ks"
    [else]
        [cm][clearfix]
        [bg storage="Make01.png" time="0"]
        @layopt layer=message0 visible=true
        #
        なぜか思い出せない...[p][er]
        [playse storage="page_back_SE.mp3" buf="0"]
        @jump storage="8_2.ks"
    [endif]
[endif]

*use_page2_draw
[if exp="f.page2_clear == true"]
    [cm][clearfix]
    [bg storage="Fishing02.png" time="0"]
    @layopt layer=message0 visible=true
    #
    思い出した！[p][er]
    [playse storage="page_back_SE.mp3" buf="0"]
    @jump storage="8_12.ks"
[else]
    [if exp="f.mimizu == true"]
        [cm][clearfix]
        [bg storage="Fishing02.png" time="0"]
        [eval exp="f.page2_clear = true"]
        @layopt layer=message0 visible=true
        #
        日記を書き直した！[p][er]
        [playse storage="move_next_page_SE.mp3" buf="0"]
        @jump storage="8_12.ks"
    [else]
        [cm][clearfix]
        [bg storage="Fishing01.png" time="0"]
        @layopt layer=message0 visible=true
        #
        なぜか思い出せない...[p][er]
        [playse storage="page_back_SE.mp3" buf="0"]
        @jump storage="8_12.ks"
    [endif]
[endif]

*use_page3_draw
[if exp="f.page3_clear == true"]
    [cm][clearfix]
    [bg storage="mimizu02.png" time="0"]
    @layopt layer=message0 visible=true
    #
    思い出した![p][er]
    [playse storage="move_next_page_SE.mp3" buf="0"]
    @jump storage="8_17.ks"
[else]
    [cm][clearfix]
    [bg storage="mimizu01.png" time="0"]
    @layopt layer=message0 visible=true
    #
    なぜか思い出せない...[p][er]
    [playse storage="page_back_SE.mp3" buf="0"]
    @jump storage="8_17.ks"
[endif]

*use_page4_draw
[if exp="f.page4_clear == true"]
    [cm][clearfix]
    [bg storage="Ice02.png" time="0"]
    @layopt layer=message0 visible=true
    #
    思い出した！[p][er]
    [playse storage="page_back_SE.mp3" buf="0"]
    @jump storage="8_23.ks"
[else]
    [if exp="f.juice == true"]
        [cm][clearfix]
        [bg storage="Ice02.png" time="0"]
        [eval exp="f.page4_clear = true"]
        @layopt layer=message0 visible=true
        #
        日記を書き直した！[p][er]
        [playse storage="move_next_page_SE.mp3" buf="0"]
        @jump storage="8_23.ks"
    [else]
        [cm][clearfix]
        [bg storage="Ice01.png" time="0"]
        @layopt layer=message0 visible=true
        #
        なぜか思い出せない...[p][er]
        [playse storage="page_back_SE.mp3" buf="0"]
        @jump storage="8_23.ks"
    [endif]
[endif]
