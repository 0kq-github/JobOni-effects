#ゲーム中ずっと動いてるネコの関数

#移動速度上昇
effect give @s[predicate=cliff_tuna:sprint_mjsk] minecraft:speed 1 0 true

#落ちても平気（滑空）
effect give @s minecraft:slow_falling 1 0 true

#水中呼吸
effect give @s minecraft:water_breathing 1 0 true

execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run function cliff_tuna:tag/jobs/r8_cat/cat_skill1_random
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run scoreboard players set @s ct_0_mjsk 400
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_0_mjsk=..0}] run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s gold_ingot

#ドロップの処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r8_cat/items
execute as @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute as @s[scores={ct_0_mjsk=0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r8_cat/skill1
scoreboard players reset @s[scores={drop_mjsk=1..}] drop_mjsk
