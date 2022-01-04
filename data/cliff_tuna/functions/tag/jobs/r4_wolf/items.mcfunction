clear @s #cliff_tuna:all_items{skill:1}

loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r4_wolf/skill1
execute if entity @s[scores={ct_60_mjsk=60}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r4_wolf/skill2
loot replace entity @s hotbar.2 loot cliff_tuna:jobs/common/agility
loot replace entity @s hotbar.3 loot cliff_tuna:jobs/r4_wolf/skill4
