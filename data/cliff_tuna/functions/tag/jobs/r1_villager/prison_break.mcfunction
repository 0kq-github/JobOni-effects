#村人用_脱獄したときに動く関数

team join runner_mjsk @s
tellraw @a ["",{"text":"[System] "},{"selector":"@s "},{"text":"が脱獄した！"}]
item replace entity @s armor.chest with air
tag @s add has_used_mjsk
clear @s minecraft:iron_bars
effect clear @s weakness
loot replace entity @s hotbar.1 loot cliff_tuna:cooltime
scoreboard players set @s playerlist 1
