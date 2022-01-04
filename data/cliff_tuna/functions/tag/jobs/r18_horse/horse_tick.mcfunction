#個体値
execute if entity @s[tag=!horse_value_mjsk] run function cliff_tuna:tag/jobs/r18_horse/horse_value

#件
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:end_portal_frame"}}] run tag @s remove horse_value_mjsk
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:end_portal_frame"}}] run scoreboard players set @s ct_2_mjsk 3000
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:end_portal_frame"}}] run loot replace entity @s hotbar.2 loot cliff_tuna:cooltime

execute if score @s ct_2_mjsk matches 1.. run scoreboard players remove @s ct_2_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_2_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_2_mjsk=1..,slot_mjsk=2}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute if score @s ct_2_mjsk matches ..0 run scoreboard players set @s ct_2_mjsk 0
execute if score @s ct_2_mjsk matches 1.. run clear @s minecraft:end_portal_frame

#走り出した、足が、止まら、ない～、行け、行け、あの人のところまで
execute unless predicate cliff_tuna:sprint_mjsk run effect give @s glowing 1 0 true

#ドロップ処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r18_horse/items
execute as @s[scores={drop_mjsk=1..,ct_2_mjsk=1..}] run loot replace entity @s hotbar.2 loot cliff_tuna:cooltime
execute as @s[scores={ct_2_mjsk=0}] run loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r18_horse/skill3
execute if entity @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
