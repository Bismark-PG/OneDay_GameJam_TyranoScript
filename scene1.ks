;========== イントロダクション ==========
[cm]
[clearfix]

[bg storage="BG_123.png" time="100"]
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
[position layer=message0 page=fore frame="Message_Box_Fixed.png" margint="20" marginl="30" marginr="30" marginb="30"]
@layopt layer=message0 visible=true

#
今日は夏休み最後の日……[p]
楽しかった休みもおわり、明日からまた学校が始まる。[p]
忘れ物をしないよう今のうちから準備をしよう。[p]
かんじドリルに、けいさんドリル、[r]
ずこうの工作にどくしょかんそう文……[p]
これでぜんぶかな？[p]
机の上に置かれた宿題を確認しながらぼくはランドセルに[r]ひとつづつ入れていく。[p]
「あ……」[p]
ぼくは教科書やドリルのまとまりのいちばん下に埋もれている[r]冊子を見つける。[p]
「夏休みの思い出」と描かれたその冊子は夏休み前に先生がクラスの[r]みんなに配った絵日記帳だった。[p]
「今日の分の日記まだ描いていなかった……」[p]
早速机に座り、ぼくはその冊子を後ろから開いた。[r]
鉛筆で８月３１日とページの頭に書いてから引き出しから色鉛筆を[r]取り出して描き始めようとするが手が動かない。[p]
「今日、まだ何もしてないや」[p]
題材が無ければ絵日記を描こうにも描けない。[p]
「あーあ、何かしないとなぁー」[p]
ぺらぺらとページをめくりながらそう思っているといつの間にか[r]最初のページを開いていた。[p]
「ん……この絵日記、何かが変？」[p][er]

@layopt layer=message0 visible=false
@jump target="*how_to_Play"

;========== ゲーム説明 ==========
*how_to_Play
@layopt layer=message0 visible=true
#
ゲーム全体の動き[p]
おかしなところを直していこう
ぜんぶ直せたら8/31の絵日記を描こう[p][er]
@layopt layer=message0 visible=false

; 最初のページ(8/2)へ移動
[playse storage="Page_many_SE.mp3" buf="0"]
@jump storage="8_2.ks"
