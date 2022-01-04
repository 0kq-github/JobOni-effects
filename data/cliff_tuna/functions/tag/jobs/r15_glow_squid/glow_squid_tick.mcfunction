#誤爆
execute if score @s ct_0_mjsk matches 0 run scoreboard players set @s ct_0_mjsk 1200

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute if score @s ct_0_mjsk matches 0 run effect give @a blindness 3 0 true
execute if score @s ct_0_mjsk matches ..0 run scoreboard players set @s ct_0_mjsk 0

#光る墨
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glow_ink_sac"}}] run effect give @s glowing 5 0 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glow_ink_sac"}}] run effect give @a[team=killer_mjsk] glowing 5 0 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glow_ink_sac"}}] run scoreboard players set @s ct_1_mjsk 300
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glow_ink_sac"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s glow_ink_sac

#光るイカ墨ビーム
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run playsound minecraft:entity.glow_squid.squirt master @s ~ ~ ~ 10 1
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run scoreboard players set @s glow_squid_1_mjsk 5
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["glow_squid_aec_mjsk"]}
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run tp @e[tag=glow_squid_aec_mjsk] ~ ~1.7 ~ ~ ~
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run function cliff_tuna:tag/jobs/r15_glow_squid/glow_squid_loop
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run scoreboard players set @s ct_2_mjsk 600
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run loot replace entity @s hotbar.2 loot cliff_tuna:cooltime

execute if score @s ct_2_mjsk matches 1.. run scoreboard players remove @s ct_2_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_2_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_2_mjsk=1..,slot_mjsk=2}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_2_mjsk=..0}] run scoreboard players set @s ct_2_mjsk 0
execute if score @s ct_2_mjsk matches 1.. run clear @s glowstone_dust

#自由に泳ぐ
effect give @s dolphins_grace 1 0 true
effect give @s water_breathing 1 0 true

#ドロップ処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r15_glow_squid/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r15_glow_squid/skill2
execute as @s[scores={drop_mjsk=1..,ct_2_mjsk=1..}] run loot replace entity @s hotbar.2 loot cliff_tuna:cooltime
execute as @s[scores={ct_2_mjsk=0}] run loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r15_glow_squid/skill3
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
