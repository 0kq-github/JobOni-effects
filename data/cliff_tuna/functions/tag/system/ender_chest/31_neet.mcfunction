scoreboard players set @s job_select_mjsk 31
execute as @s run function cliff_tuna:tag/system/ender_chest/reset

loot replace entity @s enderchest.13 loot cliff_tuna:heads/r0_unemployed
loot replace entity @s[team=killer_mjsk] enderchest.13 loot cliff_tuna:heads/k0_unemployed

item replace entity @s enderchest.18 with minecraft:dirt{display:{Name:'[{"text":"<--ドロボウ","italic":false}]'},CustomModelData:2,enderchest:1b}
loot replace entity @s enderchest.22 loot cliff_tuna:enderchest/6_back
item replace entity @s enderchest.26 with minecraft:map{display:{Name:'[{"text":"マップ-->","italic":false}]'},enderchest:1b}

#0kq
execute at @s run playsound entity.villager.ambient master @s ~ ~ ~ 1 1.5 0