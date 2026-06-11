;========== true ==========

[cm]
[clearfix]
[stopbgm]

[bg storage="bg_1.png"]

[playbgm storage="GoodEnd.mp3" loop="true"]

@layopt layer=message0 visible=true
[position layer=message0 page=fore frame="Message_Box_Fixed.png" margint="20" marginl="50" marginr="50" marginb="30"]

#
「こんな夏休みだったかも...」

[l]

[fadeoutbgm time="2000"]

[stopbgm]
@layopt layer=message0 visible=false
@jump storage="title.ks"