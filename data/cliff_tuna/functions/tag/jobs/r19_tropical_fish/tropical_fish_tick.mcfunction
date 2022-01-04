#踊れ！アミーゴ！
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:fire_coral"}}] run effect give @a[team=runner_mjsk,distance=0.01..] speed 5 2 true
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:fire_coral"}}] run effect give @s slowness 5 3 true
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:fire_coral"}}] run scoreboard players set @s ct_0_mjsk 600
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:fire_coral"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_0_mjsk=..0}] run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s fire_coral

#恥ずかしがり屋
execute if entity @a[team=killer_mjsk,distance=..5] run effect give @s speed 1 5 true

#こっち見て～
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:sunflower"}}] run effect give @s glowing 10 0 true
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:sunflower"}}] run scoreboard players set @s ct_2_mjsk 1200
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:sunflower"}}] run loot replace entity @s hotbar.2 loot cliff_tuna:cooltime

execute if score @s ct_2_mjsk matches 1100.. as @a[team=killer_mjsk] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,tag=tropical_fish_mjsk,scores={ct_2_mjsk=1100..}]

execute if score @s ct_2_mjsk matches 1.. run scoreboard players remove @s ct_2_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_2_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_2_mjsk=1..,slot_mjsk=2}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_2_mjsk=..0}] run scoreboard players set @s ct_2_mjsk 0
execute if score @s ct_2_mjsk matches 1.. run clear @s sunflower

#光れ
execute unless entity @a[distance=0.01..5] run effect give @s glowing 1 0 true

#ドロップ処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r19_tropical_fish/items
execute if entity @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute if entity @s[scores={ct_0_mjsk=0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r19_tropical_fish/skill1
execute if entity @s[scores={drop_mjsk=1..,ct_2_mjsk=1..}] run loot replace entity @s hotbar.2 loot cliff_tuna:cooltime
execute if entity @s[scores={ct_2_mjsk=0}] run loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r19_tropical_fish/skill3
execute if entity @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
