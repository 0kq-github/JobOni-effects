#魔貫光殺砲
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 10 1.5
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run scoreboard players add @s guardian_mjsk 100
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["guardian_p_mjsk"]}
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run tp @e[tag=guardian_p_mjsk] ~ ~1.7 ~ ~ ~
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run function cliff_tuna:tag/jobs/k13_guardian/guardian_loop
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ガーディアン> 魔貫光殺砲!!"}]
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run scoreboard players set @s ct_0_mjsk 300
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_0_mjsk=..0}] run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s soul_torch

#殴れない
effect give @s weakness 1 127 true

#はねる
effect give @s slowness 1 127 true 
effect give @s jump_boost 1 1 true

#スイスイ
effect give @s dolphins_grace 1 0 true
effect give @s water_breathing 1 0 true

#ドロップ処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k13_guardian/items
execute as @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute as @s[scores={ct_0_mjsk=0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/k13_guardian/skill1
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
