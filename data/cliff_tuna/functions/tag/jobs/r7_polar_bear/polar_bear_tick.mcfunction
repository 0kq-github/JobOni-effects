#ゲーム中ずっと動いてるシロクマの関数

#捕まると盲目発光
execute if entity @s[team=caught_mjsk] run effect give @a[team=killer_mjsk] minecraft:glowing 1 0 true
effect give @s[team=caught_mjsk] minecraft:blindness 5 0 true

#水中移動
effect give @s minecraft:dolphins_grace 1 0 true

#動物園の人気者
effect give @s minecraft:glowing 1 0 true

#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r7_polar_bear/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
