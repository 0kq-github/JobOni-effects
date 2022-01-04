#ゲーム中ずっと動いてるブレイズの関数

#浮遊
execute as @s[nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] run effect give @s minecraft:levitation 1 49 true
execute as @s[nbt=!{SelectedItem:{id:"minecraft:light_blue_dye"}}] run effect clear @s minecraft:levitation

#水に入れない
execute if block ~ ~ ~ minecraft:water run tp @s ~ ~5 ~

execute if score @s ct_1_mjsk matches 0 run scoreboard players set @s ct_1_mjsk 400

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute if score @s ct_1_mjsk matches 0 run give @s arrow 1
execute if score @s ct_1_mjsk matches ..0 run scoreboard players set @s ct_1_mjsk 0

#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k7_blaze/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
