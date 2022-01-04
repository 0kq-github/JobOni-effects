scoreboard players set @s job_select_mjsk 22
execute as @s run function cliff_tuna:tag/system/ender_chest/reset

loot replace entity @s enderchest.0 loot cliff_tuna:heads/r19_tropical_fish



item replace entity @s enderchest.18 with minecraft:dirt{display:{Name:'[{"text":"<--ケイサツ","italic":false}]'},CustomModelData:1,enderchest:1b}
loot replace entity @s enderchest.21 loot cliff_tuna:enderchest/4_previous
loot replace entity @s enderchest.22 loot cliff_tuna:enderchest/6_back
item replace entity @s enderchest.26 with minecraft:dirt{display:{Name:'[{"text":"無職-->","italic":false}]'},CustomModelData:3,enderchest:1b}

#0kq
execute at @s run playsound entity.cat.ambient master @s ~ ~ ~ 1 1.5 0