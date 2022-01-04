#ケイサツが勝った時の関数
tellraw @a[tag=debug] "[debugメッセージ] 関数win_killerが動きました。"

title @a times 0 60 40
tellraw @a [{"text":"[System] ケイサツ"},{"selector":"@a[team=killer_mjsk]","bold":true},{"text":" の勝利です。おめでとうございます！ "}]
title @a[team=killer_mjsk] title [{"text":" YOU WIN!","color":"gold","bold": true}]
execute as @a[team=killer_mjsk] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1 0
title @a[team=caught_mjsk] title [{"text":" YOU LOSE...","color":"red","bold": true}]
execute as @a[team=caught_mjsk] at @s run playsound item.trident.thunder master @s ~ ~ ~ 0.8 1 0
effect give @a[team=killer_mjsk] glowing 10 0 true
tag @a remove ongame_mjsk

function cliff_tuna:tag/game_init
