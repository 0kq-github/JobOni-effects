#日替わり定食
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run loot give @a[team=runner_mjsk] loot cliff_tuna:jobs/r16_pig/set_meal
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] as @a[team=runner_mjsk] at @s run playsound entity.pig.hurt master @s ~ ~ ~ 10
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run effect give @s slowness 5 2 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run scoreboard players set @s ct_0_mjsk 400
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute if score @s ct_0_mjsk matches ..0 run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s shears

#キノコ掘り
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run function cliff_tuna:tag/jobs/r16_pig/random
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run scoreboard players set @s ct_1_mjsk 600
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s wooden_shovel

#鈍足
effect give @s slowness 1 0 true

#水中移動
effect give @s dolphins_grace 1 0 true

#ドロップ処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r16_pig/items
execute as @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute as @s[scores={ct_0_mjsk=0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r16_pig/skill1
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r16_pig/skill2
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
