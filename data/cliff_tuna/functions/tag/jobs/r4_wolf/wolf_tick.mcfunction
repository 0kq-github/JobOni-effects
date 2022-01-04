#ゲーム中ずっと動いてるオオカミの関数

#移動速度上昇
effect give @s minecraft:speed 1 0 true

#罠
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:black_banner"}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["wolf_stand_mjsk"],Team:runner_mjsk,Invisible:true}

execute at @e[type=minecraft:armor_stand,tag=wolf_stand_mjsk] if entity @a[distance=..1,team=killer_mjsk] run summon minecraft:evoker_fangs ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=wolf_stand_mjsk] if entity @a[distance=..1,team=killer_mjsk] run effect give @p[team=killer_mjsk] minecraft:blindness 10 0 true
execute at @e[type=minecraft:armor_stand,tag=wolf_stand_mjsk] if entity @a[distance=..1,team=killer_mjsk] run effect give @p[team=killer_mjsk] minecraft:slowness 10 99 true
execute as @e[type=minecraft:armor_stand,tag=wolf_stand_mjsk] at @s if entity @a[distance=..1,team=killer_mjsk] run kill @s

execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:black_banner"}}] run scoreboard players set @s ct_1_mjsk 1200
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:black_banner"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s black_banner

#ドロップしても戻ってくる奴
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r4_wolf/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r4_wolf/skill2
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
