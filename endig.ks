;========== エンディング分岐 ==========
[cm]
[clearfix]
[stopbgm]

; 真エンディング条件：全てのページをクリアし、かつ全てのアイテムを所持
[if exp="f.page1_clear && f.page2_clear && f.page3_clear && f.page4_clear && f.page5_clear && f.mimizu && f.straw && f.juice"]
    @jump storage="happy.ks"

; ノーマルエンディング条件：全てのアイテムは所持しているが、ページクリアが不完全
[elsif exp="f.mimizu == true && f.straw == true && f.juice == true"]
    @jump storage="good.ks"

; バッドエンディング条件：上記以外
[else]
    @jump storage="bed.ks"
[endif]
