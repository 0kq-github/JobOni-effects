clear @s #cliff_tuna:all_items{skill:1}

loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r10_rabbit/skill1
execute if entity @s[scores={ct_20_mjsk=20}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r10_rabbit/skill2
loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r10_rabbit/skill3
loot replace entity @s hotbar.3 loot cliff_tuna:jobs/r10_rabbit/skill4
