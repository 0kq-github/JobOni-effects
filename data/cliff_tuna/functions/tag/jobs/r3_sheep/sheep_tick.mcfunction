#ゲーム中ずっと動いてるヒツジの関数

#真ん中のアーマースタンドにtp(ケイサツににらまれたヒツジ)
tp @s[team=caught_mjsk] @e[type=minecraft:armor_stand,tag=prison_mjsk,limit=1]

#ランダムハサミ
#スニークしたら反応して時計に変わる
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run function cliff_tuna:tag/jobs/r3_sheep/wool
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run scoreboard players set @s ct_1_mjsk 600
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:shears"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s shears

#証拠隠滅
#スニークしたら反応して時計に変わる
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run effect clear @a
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> ごめん!やっぱ無し!"}]
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run scoreboard players set @s ct_0_mjsk 1200
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime

execute if score @s ct_0_mjsk matches 1.. run scoreboard players remove @s ct_0_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_0_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_0_mjsk=1..,slot_mjsk=0}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_0_mjsk=..0}] run scoreboard players set @s ct_0_mjsk 0
execute if score @s ct_0_mjsk matches 1.. run clear @s flint_and_steel

#ランダムハサミ
scoreboard players add @s sheep_r_mjsk 1
execute as @s[scores={sheep_r_mjsk=16..}] run scoreboard players set @s sheep_r_mjsk 0

#ドロップしたものが戻ってくる
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r3_sheep/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=..0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r3_sheep/skill2
execute as @s[scores={drop_mjsk=1..,ct_0_mjsk=1..}] run loot replace entity @s hotbar.0 loot cliff_tuna:cooltime
execute as @s[scores={ct_0_mjsk=..0}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r3_sheep/skill1
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
