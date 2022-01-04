#ゲーム中ずっと動いてるウサギの関数

#さみしいと発光しちゃいます
execute unless entity @a[tag=!rabbit_mjsk,distance=..5] run effect give @s minecraft:glowing 1 0 true
execute if entity @a[tag=!rabbit_mjsk,distance=..5] run effect clear @s glowing

#周囲警戒
execute as @a if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:ender_eye"}}] run effect give @a[distance=..25,team=killer_mjsk] minecraft:glowing 1 0 true

#無限人参
execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot"}]}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r10_rabbit/skill1

#脱兎
effect give @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] minecraft:speed 15 5 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] run scoreboard players set @s ct_1_mjsk 400
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s rabbit_foot

#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r10_rabbit/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r10_rabbit/skill2
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
