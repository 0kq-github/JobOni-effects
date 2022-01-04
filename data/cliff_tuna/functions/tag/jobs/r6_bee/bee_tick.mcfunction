#ゲーム中ずっと動いてるミツバチの関数

#ランダム
scoreboard players add @s bee_r_mjsk 1
execute as @s[scores={bee_r_mjsk=10..}] run scoreboard players set @s bee_r_mjsk 0

#移動速度低下
effect give @s minecraft:slowness 1 0 true

#花の上に立つとうんたらかんたら
execute if block ~ ~ ~ minecraft:oxeye_daisy run effect give @s minecraft:saturation 10 10 true
execute if block ~ ~ ~ minecraft:azure_bluet run effect give @s minecraft:invisibility 1 0 false

execute if block ~ ~ ~ minecraft:azure_bluet run item replace entity @s armor.head with minecraft:air
execute unless block ~ ~ ~ minecraft:azure_bluet run loot replace entity @s armor.head loot cliff_tuna:heads/r6_bee


execute if block ~ ~ ~ minecraft:cornflower run effect give @s minecraft:speed 10 0 true
execute if block ~ ~ ~ minecraft:dandelion run effect give @s minecraft:jump_boost 10 0 true
execute if block ~ ~ ~ minecraft:poppy run effect give @s minecraft:poison 10 0 true

#ドロップしても帰ってくる
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r6_bee/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
