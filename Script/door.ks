[cm]
[clearfix]
@layopt layer=message0 visible=true

[if exp="f.is_get_key == true"]
    [stopbgm]
    [bg storage="rouka.jpg" time="1000"]
    #
    脱出できた！[p][er]

    [if exp="f.is_get_juice == true"]
        @jump storage="true.ks"

    [else]
        @jump storage="bed.ks"

    [endif]

[else]
    #
    ドアには鍵がかかっている。[p][er]
    @jump storage="scene1.ks" target="*select_place"
[endif]