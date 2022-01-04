clear @s #cliff_tuna:all_items{skill:1}

execute if entity @s[scores={ct_60_mjsk=60}] run loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r3_sheep/skill1
execute if entity @s[scores={ct_30_mjsk=30}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r3_sheep/skill2
loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r3_sheep/skill3
loot replace entity @s hotbar.3 loot cliff_tuna:jobs/r3_sheep/skill4
