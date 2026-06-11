;========== バッドエンド ==========
[cm]
[clearfix]
[bg storage="bg_1.png"]
[playbgm storage="BadEnd.mp3" loop="true"]

@layopt layer=message0 visible=true
[position layer=message0 page=fore frame="Message_Box_Fixed.png" margint="20" marginl="50" marginr="50" marginb="30"]

#
「...」[p]

; 各ページのクリア状態をチェックしてヒントを表示
[if exp="f.page1_clear == false"]
    #
    「8月2日の日記、ロボットが完成していない...」[p]
[endif]

[if exp="f.page2_clear == false"]
    #
    「8月12日の日記、魚、釣らなかったっけ...？」[p]
[endif]

[if exp="f.page3_clear == false"]
    #
    「8月17日の日記、雨が降っていた気がする...」[p]
[endif]

[if exp="f.page4_clear == false"]
    #
    「8月23日の日記、おいしくなさそう...」[p]
[endif]

[if exp="f.page5_clear == false"]
    #
    「8月30日の日記、何もとれなかったっけ...？」[p]
[endif]

[l]
[fadeoutbgm time="2000"]
[stopbgm]
@jump storage="title.ks"
