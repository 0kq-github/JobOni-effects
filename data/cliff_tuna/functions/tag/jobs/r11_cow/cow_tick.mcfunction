#ゲーム中ずっと動いてるウシの関数

#搾乳
execute unless data entity @s Inventory[{Slot:0b,id:"minecraft:milk_bucket"}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r11_cow/skill1

#俊敏
effect give @s minecraft:speed 1 0 true

#牧場の中
playsound minecraft:entity.cow.ambient master @s ~ ~ ~

#ドロップの処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r11_cow/items
execute if entity @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
