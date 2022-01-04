#ゲーム中ずっと動いてるニワトリの関数

#滑空
effect give @s minecraft:slow_falling 1 0 true

#ガチャ
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] run loot give @s loot cliff_tuna:jobs/r5_chicken/egg_gacha
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] run scoreboard players set @s ct_1_mjsk 300
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[nbt={Inventory:[{Slot:1b,id:"minecraft:clock"}]}] run scoreboard players add @s ct1_mjsk 1

execute if score @s ct_1_mjsk matches 1.. run scoreboard players remove @s ct_1_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_1_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_1_mjsk=1..,slot_mjsk=1}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_1_mjsk=..0}] run scoreboard players set @s ct_1_mjsk 0
execute if score @s ct_1_mjsk matches 1.. run clear @s dragon_egg

#鳴き声
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:bell"}}] run effect give @a[team=killer_mjsk] slowness 3 127 true
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:bell"}}] as @a[team=killer_mjsk] at @s run playsound entity.chicken.hurt master @s ~ ~ ~ 10
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:bell"}}] run scoreboard players set @s ct_2_mjsk 300
execute if entity @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:bell"}}] run loot replace entity @s hotbar.2 loot cliff_tuna:cooltime

execute if score @s ct_2_mjsk matches 1.. run scoreboard players remove @s ct_2_mjsk 1
scoreboard players operation @s calculation_mjsk = @s ct_2_mjsk
scoreboard players operation @s calculation_mjsk /= #20 constant_mjsk
execute as @s[scores={ct_2_mjsk=1..,slot_mjsk=2}] run title @s actionbar [{"text":"CT:"},{"score":{"name":"*","objective":"calculation_mjsk"}}]

execute as @s[scores={ct_2_mjsk=..0}] run scoreboard players set @s ct_2_mjsk 0
execute if score @s ct_2_mjsk matches 1.. run clear @s bell

#アイテムドロップで帰ってくる奴
execute as @s[scores={drop_mjsk=1..}] at @s run function cliff_tuna:tag/jobs/r5_chicken/items
execute as @s[scores={drop_mjsk=1..,ct_1_mjsk=1..}] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
execute as @s[scores={ct_1_mjsk=0}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r5_chicken/skill2
execute as @s[scores={drop_mjsk=1..,ct_2_mjsk=1..}] run loot replace entity @s hotbar.2 loot cliff_tuna:cooltime
execute as @s[scores={ct_2_mjsk=0}] run loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r5_chicken/skill3
execute as @s[scores={drop_mjsk=1..}] at @s run scoreboard players reset @s drop_mjsk
