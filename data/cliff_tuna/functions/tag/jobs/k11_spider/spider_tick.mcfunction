#地面付いてる時は攻撃できない
effect give @s[nbt={OnGround:true}] weakness 1 9 true
effect clear @s[nbt={OnGround:false}] weakness

#発射!
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run effect give @s speed 1 14 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run effect give @s jump_boost 1 3 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run scoreboard players set @s ct_1_mjsk 400
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s slime_ball

#隠れ身
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fern"}}] run effect give @s invisibility 1 0 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fern"}}] run loot replace entity @s armor.head loot cliff_tuna:heads/k11_2_spider
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:fern"}}] run loot replace entity @s armor.head loot cliff_tuna:heads/k11_1_spider

#ドロップ処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k11_spider/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/k11_spider/skill2
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
