clear @s #cliff_tuna:all_items{skill:1}

loot replace entity @s hotbar.0 loot cliff_tuna:jobs/r2_iron_golem/skill1
execute as @s[scores={ct_60_mjsk=60}] run loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r2_iron_golem/skill2
loot replace entity @s hotbar.2 loot cliff_tuna:jobs/common/heavy_weight
loot replace entity @s hotbar.3 loot cliff_tuna:jobs/r2_iron_golem/skill4
