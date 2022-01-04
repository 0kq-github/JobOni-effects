#村人用　ジョブ鬼ごっこ中のみ毎tick動く関数。

#走っているとき、発光をつける。
execute as @s[predicate=cliff_tuna:sprint_mjsk] run effect give @s minecraft:glowing 1 0 true

#常に俊敏をつける。
effect give @s minecraft:speed 1 0 true

#脱獄
execute as @s[team=caught_mjsk,predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:iron_bars"}}] at @s run function cliff_tuna:tag/jobs/r1_villager/prison_break

#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r1_villager/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
