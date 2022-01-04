clear @s #cliff_tuna:all_items{skill:1}

loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r12_snow_golem/skill1
execute if entity @s[scores={snow_golem_mjsk=0}] run loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r12_snow_golem/skill3_1
execute if entity @s[scores={snow_golem_mjsk=1}] run loot replace entity @s hotbar.2 loot cliff_tuna:jobs/r12_snow_golem/skill3_2
loot replace entity @s hotbar.3 loot cliff_tuna:jobs/r12_snow_golem/skill4
