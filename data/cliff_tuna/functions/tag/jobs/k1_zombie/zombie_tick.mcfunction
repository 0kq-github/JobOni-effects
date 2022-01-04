#ゾンビ用 ジョブ鬼ごっこ中のみ毎tick実行される関数

#這いずり
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:twisting_vines"}}] run effect give @s speed 1 29 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:twisting_vines"}}] run effect give @s weakness 1 10 true
execute if entity @s[predicate=!cliff_tuna:sneak_mjsk] run effect clear @s speed

#ゾンビにつけるデバフ
effect give @s minecraft:slowness 1 0 true

#ゾンビのスポーンエッグがslot1にあるときにスニークで発動
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:zombie_spawn_egg"}}] run tp @s @p[team=runner_mjsk]
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:zombie_spawn_egg"}}] run effect give @s weakness 7 9 false
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:zombie_spawn_egg"}}] run scoreboard players set @s ct_1_mjsk 600
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:zombie_spawn_egg"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s zoglin_spawn_egg

#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k1_zombie/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/k1_zombie/skill2
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
