#関数after_startcountから呼び出す。timerを開始する関数

#時間を減らす
scoreboard players remove Timer tag_timer_mjsk 1

#時間を名前に表示
execute store result bossbar cliff_tuna:timer value run scoreboard players get Timer tag_timer_mjsk
bossbar set cliff_tuna:timer name ["残り時間: ",{"score":{"name":"Timer","objective":"tag_timer_mjsk"},"color":"gold"}]

#残り時間があったらもう一度繰り返す
execute if score Timer tag_timer_mjsk matches 1.. run schedule function cliff_tuna:tag/system/3_ongame/bossbar 20t

execute if score Timer tag_timer_mjsk matches ..0 run bossbar set cliff_tuna:timer players
