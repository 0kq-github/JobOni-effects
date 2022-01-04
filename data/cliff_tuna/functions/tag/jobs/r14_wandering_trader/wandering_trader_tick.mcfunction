#ポーション付与
execute if score @s ct_1_mjsk matches 0 run scoreboard players set @s ct_1_mjsk 600

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute if score @s ct_1_mjsk matches 0 run effect give @s speed 20 2 true
execute if score @s ct_1_mjsk matches 0 run effect give @s nausea 10 0 true
execute if score @s ct_1_mjsk matches 0 run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":" | 行商人> キマルゥゥウゥゥゥウゥゥゥ!!!!! 足はえぇぇぇぇぇぇぇぇぇ!!!!!!"}]
execute if score @s ct_1_mjsk matches ..0 run scoreboard players set @s ct_1_mjsk 0

#ドロップ処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r14_wandering_trader/items
execute if entity @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
