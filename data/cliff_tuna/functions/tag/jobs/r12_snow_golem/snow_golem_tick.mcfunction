#無限雪玉
execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:snowball"}]}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r12_snow_golem/skill1

#モードチェンジ
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run scoreboard players add @s snow_golem_mjsk 1
execute if score @s snow_golem_mjsk matches 2.. run scoreboard players set @s snow_golem_mjsk 0
execute if score @s snow_golem_mjsk matches ..0 run scoreboard players set @s snow_golem_mjsk 0
execute if score @s snow_golem_mjsk matches 0.. run loot replace entity @s armor.head loot cliff_tuna:heads/r12_1_snow_golem
execute if score @s snow_golem_mjsk matches 1.. run loot replace entity @s armor.head loot cliff_tuna:heads/r12_2_snow_golem
execute if score @s snow_golem_mjsk matches 0.. run loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r12_snow_golem/skill3_1
execute if score @s snow_golem_mjsk matches 1.. run loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r12_snow_golem/skill3_2
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run scoreboard players set @s ct_1_mjsk 20
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s shears

#カボチャ・素顔
execute if score @s snow_golem_mjsk matches 0 run effect give @s slowness 1 1 true
execute if score @s snow_golem_mjsk matches 1 run effect give @s speed 1 2 true
execute if score @s snow_golem_mjsk matches 1 run effect give @s weakness 5 9 true

#水につかると捕まる
execute if entity @s[predicate=cliff_tuna:underwater_mjsk] run function cliff_tuna:tag/system/3_ongame/caught_runner

#ドロップの処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r12_snow_golem/items
execute if entity @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute if entity @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r12_snow_golem/skill2
execute if entity @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
