scoreboard players set @s job_select_mjsk 12
execute as @s run function cliff_tuna:tag/system/ender_chest/reset





item replace entity @s enderchest.18 with minecraft:map{display:{Name:'[{"text":"<--マップ","italic":false}]'},enderchest:1b}
loot replace entity @s enderchest.21 loot cliff_tuna:enderchest/4_previous
loot replace entity @s enderchest.22 loot cliff_tuna:enderchest/6_back
item replace entity @s enderchest.26 with minecraft:dirt{display:{Name:'[{"text":"ドロボウ-->","italic":false}]'},CustomModelData:2,enderchest:1b}
