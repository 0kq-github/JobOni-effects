#設置型タマゴ爆弾
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:turtle_egg"}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["turtle_stand_mjsk"],Team:runner_mjsk,Invisible:true}
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:turtle_egg"}}] run scoreboard players set @s ct_0_mjsk 400
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:turtle_egg"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute if score @s ct_0_mjsk matches ..0 run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s turtle_egg

execute at @e[type=minecraft:armor_stand,tag=turtle_stand_mjsk] if entity @a[distance=..1,team=killer_mjsk] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2
execute at @e[type=minecraft:armor_stand,tag=turtle_stand_mjsk] if entity @a[distance=..1,team=killer_mjsk] run effect give @p[team=killer_mjsk] minecraft:glowing 30 0 true
execute as @e[type=minecraft:armor_stand,tag=turtle_stand_mjsk] at @s if entity @a[distance=..1,team=killer_mjsk] run kill @s

#生存本能
execute positioned ~ ~1 ~ facing entity @e[team=killer_mjsk] eyes run function cliff_tuna:tag/jobs/r17_turtle/turtle_loop

#集中しすぎ
execute if entity @s[predicate=cliff_tuna:underwater_mjsk] run effect clear @s blindness
execute unless entity @s[predicate=cliff_tuna:underwater_mjsk] run effect give @s blindness 5 0 true

#泳ぐよう
effect give @s dolphins_grace 1 0 true
effect give @s water_breathing 1 0 true

#ドロップ処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r17_turtle/items
execute as @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute as @s[scores={ct_0_mjsk=0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r17_turtle/skill1
execute if entity @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
