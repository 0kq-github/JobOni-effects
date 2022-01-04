#ゲーム中ずっと動いてるアイアンゴーレムの関数

#移動速度低下2
effect give @s minecraft:slowness 1 1 true

#鉄ブロックを持ってスニークしたらケイサツに弱体化が1度だけ20秒つく
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:iron_block"}}] run effect give @a[team=killer_mjsk] minecraft:weakness 20 9 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:iron_block"}}] run scoreboard players set @s ct_1_mjsk 1200
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:iron_block"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s iron_block

#落としたものが帰ってくる
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r2_iron_golem/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r2_iron_golem/skill2
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk

#スニークしたときにタグをつける
#execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:iron_block"}}] run tag @s add has_used_mjsk
