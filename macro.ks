;========== マクロ定義ファイル ==========

;効果音を鳴らしてジャンプするマクロ
; sound="効果音ファイル名" storage="移動先ファイル名" のように使います
[macro name="play_se_and_jump"]
    [cm]
    [clearfix]
    [playse storage=%sound]
    @jump storage=%storage
[endmacro]
