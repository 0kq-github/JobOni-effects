clear @s #cliff_tuna:all_items{skill:1}

loot replace entity @s hotbar.0 loot cliff_tuna:jobs/common/just_a_stick

#使ったことがある場合はcooltimeを渡す
loot replace entity @s hotbar.1 loot cliff_tuna:jobs/r1_villager/skill2
execute if entity @s[tag=has_used_mjsk] run loot replace entity @s hotbar.1 loot cliff_tuna:cooltime

loot replace entity @s hotbar.2 loot cliff_tuna:jobs/common/agility
loot replace entity @s hotbar.3 loot cliff_tuna:jobs/r1_villager/skill4
