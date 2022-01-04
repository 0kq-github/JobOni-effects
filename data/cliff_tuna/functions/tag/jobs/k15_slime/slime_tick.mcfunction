#罠
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:moss_carpet"}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["slime_stand_mjsk"],Team:killer_mjsk,Invisible:true}

execute at @e[type=minecraft:armor_stand,tag=slime_stand_mjsk] if entity @a[distance=..2,team=runner_mjsk] run playsound minecraft:entity.slime.death master @p[team=runner_mjsk] ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=slime_stand_mjsk] if entity @a[distance=..2,team=runner_mjsk] run effect give @p[team=runner_mjsk] minecraft:slowness 10 127 true
execute as @e[type=minecraft:armor_stand,tag=slime_stand_mjsk] at @s if entity @a[distance=..2,team=runner_mjsk] run kill @s

execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:moss_carpet"}}] run scoreboard players set @s ct_0_mjsk 600
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:moss_carpet"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_0_mjsk=..0}] run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s moss_carpet

#跳躍
effect give @s jump_boost 1 2 true

#小さく
scoreboard players add @s slime_mjsk 1

execute if score @s slime_mjsk matches 0..2400 run effect give @s slowness 1 0 true
execute if score @s slime_mjsk matches 2401..4800 run effect give @s speed 1 0 true
execute if score @s slime_mjsk matches 4801.. run effect give @s speed 1 1 true
execute if score @s slime_mjsk matches 4801.. run effect give @s weakness 1 127 true

#範囲
execute as @a[team=runner_mjsk] at @s positioned ~ ~0.5 ~ if entity @a[tag=slime_mjsk,distance=..1.5] run function cliff_tuna:tag/system/3_ongame/caught_runner

#ドロップ処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k15_slime/items
execute as @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute as @s[scores={ct_0_mjsk=0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/k15_slime/skill1
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
