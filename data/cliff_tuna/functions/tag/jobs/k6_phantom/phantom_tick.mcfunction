#ゲーム中ずっと動いてるファントムの関数

#離陸
effect give @s minecraft:jump_boost 1 1 true

#体当たり
execute as @a[team=runner_mjsk] at @s positioned ~ ~1 ~ if entity @a[tag=phantom_mjsk,distance=..1,scores={elytra_mjsk=1..}] run function cliff_tuna:tag/system/3_ongame/caught_runner
execute as @a[tag=phantom_mjsk,scores={elytra_mjsk=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0 10 normal
scoreboard players reset @s elytra_mjsk

#足は無いんやで…
effect give @s minecraft:slowness 1 6 true

#手作りらしい
execute if score @s ct_1_mjsk matches 0 run scoreboard players set @s ct_1_mjsk 100

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute if score @s ct_1_mjsk matches 0 run give @s firework_rocket 2
execute if score @s ct_1_mjsk matches ..0 run scoreboard players set @s ct_1_mjsk 0

#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k6_phantom/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
