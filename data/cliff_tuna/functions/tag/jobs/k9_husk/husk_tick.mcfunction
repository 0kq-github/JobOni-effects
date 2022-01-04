#ゲーム中ずっと動いてるハスクの関数

#空腹範囲
execute as @s at @s if entity @a[distance=..8,team=runner_mjsk] run effect give @a[distance=..8,team=runner_mjsk] minecraft:hunger 1 4 true

#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k9_husk/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
