#ゲーム中ずっと動いてるシルバーフィッシュの関数

#石の上に立つとバフ
execute if block ~ ~-1 ~ minecraft:cobblestone run effect give @s minecraft:speed 10 0 true
execute if block ~ ~-1 ~ minecraft:stone_bricks run effect give @s minecraft:speed 10 2 true

#石に擬態（不可視）
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_bricks"}}] run effect give @s minecraft:invisibility 1 0 true
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_bricks"}}] run item replace entity @s armor.head with air
execute as @s[nbt=!{SelectedItem:{id:"minecraft:stone_bricks"}}] run loot replace entity @s armor.head loot cliff_tuna:heads/k5_silverfish
execute as @s[nbt=!{SelectedItem:{id:"minecraft:stone_bricks"}}] run item modify entity @s armor.head cliff_tuna:set_nbt_job_head

#ケイサツを集める
execute as @s[predicate=cliff_tuna:sneak_mjsk,nbt={SelectedItem:{id:"minecraft:gray_banner"}}] run tp @s @e[type=armor_stand,tag=prison_mjsk,limit=1]

#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/k5_silverfish/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
