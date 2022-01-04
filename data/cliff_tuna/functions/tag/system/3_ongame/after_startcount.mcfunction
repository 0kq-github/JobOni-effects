#スタートカウント後に実行される関数
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 0
tag @a remove before_gamestart_mjsk
tag @a add ongame_mjsk

title @a times 0 20 0
title @a title "スタート"

scoreboard players reset Timer tagstart_mjsk

effect clear @a weakness

#bossbarタイマーをセットして開始する
bossbar add cliff_tuna:timer "タイマー"
scoreboard players set Timer tag_timer_mjsk 301
execute store result bossbar cliff_tuna:timer max run scoreboard players get Timer tag_timer_mjsk
bossbar set cliff_tuna:timer players @a
bossbar set cliff_tuna:timer color blue
function cliff_tuna:tag/system/3_ongame/bossbar

#CTをリセット
scoreboard players reset @a ct_0_mjsk
scoreboard players reset @a ct_1_mjsk
scoreboard players reset @a ct_2_mjsk
