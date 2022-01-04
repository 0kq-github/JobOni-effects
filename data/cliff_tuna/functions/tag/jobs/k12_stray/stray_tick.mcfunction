#自動で鈍化の矢を与える
execute if score @s ct_0_mjsk matches 0 run scoreboard players set @s ct_0_mjsk 300

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute if score @s ct_0_mjsk matches 0 run give @s tipped_arrow{CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:2400}],CustomPotionColor:14081535} 1
execute if score @s ct_0_mjsk matches ..0 run scoreboard players set @s ct_0_mjsk 0

#ドロボウに鈍足と、自分にも鈍足
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blue_ice"}}] run effect give @s slowness 30 127 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blue_ice"}}] run effect give @a[team=runner_mjsk] slowness 30 3 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blue_ice"}}] run scoreboard players set @s ct_1_mjsk 1800
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blue_ice"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s blue_ice

#ドロップ処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k12_stray/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/k12_stray/skill2
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
