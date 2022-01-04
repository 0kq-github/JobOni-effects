#火炎放射
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run scoreboard players set @s ghast_mjsk 8
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 1
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ガスト> ファイヤー!"}]
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["ghast_aec_1_mjsk","ghast_aec_mjsk"]}
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["ghast_aec_2_mjsk","ghast_aec_mjsk"]}
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["ghast_aec_3_mjsk","ghast_aec_mjsk"]}
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["ghast_aec_4_mjsk","ghast_aec_mjsk"]}
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["ghast_aec_5_mjsk","ghast_aec_mjsk"]}
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run tp @e[tag=ghast_aec_1_mjsk] ~ ~1.7 ~ ~90 ~
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run tp @e[tag=ghast_aec_2_mjsk] ~ ~1.7 ~ ~45 ~
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run tp @e[tag=ghast_aec_3_mjsk] ~ ~1.7 ~ ~ ~
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run tp @e[tag=ghast_aec_4_mjsk] ~ ~1.7 ~ ~-45 ~
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run tp @e[tag=ghast_aec_5_mjsk] ~ ~1.7 ~ ~-90 ~
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run function cliff_tuna:tag/jobs/k14_ghast/ghast_loop
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run scoreboard players set @s ct_0_mjsk 800
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_0_mjsk=..0}] run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s blaze_powder

#浮遊
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:phantom_membrane"}}] run effect give @s levitation 1 4 true

#落下
effect give @s slow_falling 1 0 true

#不可視
effect give @s invisibility 1 0 true

#ドロップ処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k14_ghast/items
execute as @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute as @s[scores={ct_0_mjsk=0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/k14_ghast/skill1
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
