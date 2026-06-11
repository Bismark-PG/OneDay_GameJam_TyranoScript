[cm]
[clearfix]
@layopt layer=message0 visible=true

[if exp="f.is_get_juice == false"]
    #
    冷蔵庫からジュースを見つけた。
    [eval exp="f.is_get_juice = true"]
    
[else]
    #
    もう何もないようだ。
[endif]

[p][er]

@jump storage="scene1.ks" target="*select_place"