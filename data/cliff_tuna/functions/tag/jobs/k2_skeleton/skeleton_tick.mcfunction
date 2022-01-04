#ゲーム中ずっと動いてるスケルトンの関数

#殴れない
effect give @s minecraft:weakness 1 9 true

#不可視のハンター
execute as @s[predicate=cliff_tuna:sneak_mjsk] run effect give @s minecraft:invisibility 1 0 true
execute as @s[predicate=cliff_tuna:sneak_mjsk] run item replace entity @s armor.head with air

#不可視中にairに置き換えたスケルトンの頭を元に戻す
execute as @s[predicate=!cliff_tuna:sneak_mjsk] run loot replace entity @s armor.head loot cliff_tuna:heads/k2_skeleton


#ドロップしたときに帰ってくるやつ
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k2_skeleton/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
