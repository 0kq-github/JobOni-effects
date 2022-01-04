#ゲーム中ずっと動いてるクリーパーの関数

#鈍足
effect give @s minecraft:slowness 1 0 true

#弱体化
effect give @s minecraft:weakness 1 9 true

#自爆
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run summon creeper ~ ~ ~ {CustomName:'"自爆"',CustomNameVisible:true,ExplosionRadius:4,Fuse:0,ignited:true,Tags:["self_destruct_mjsk"],Team:killer_mjsk}
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run effect give @s minecraft:slowness 3 127 true
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run effect give @s minecraft:blindness 3 127 true
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run scoreboard players set @s ct_0_mjsk 400
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_0_mjsk=..0}] run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s creeper_spawn_egg

#ドロップしても戻ってくる
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k3_creeper/items
execute as @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute as @s[scores={ct_0_mjsk=0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/k3_creeper/skill1
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
