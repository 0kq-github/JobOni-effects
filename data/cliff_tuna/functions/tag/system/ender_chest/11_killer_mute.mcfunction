scoreboard players set @s job_select_mjsk 11
execute as @s run function cliff_tuna:tag/system/ender_chest/reset

loot replace entity @s enderchest.0 loot cliff_tuna:heads/k1_zombie
loot replace entity @s enderchest.1 loot cliff_tuna:heads/k2_skeleton
loot replace entity @s enderchest.2 loot cliff_tuna:heads/k3_creeper
loot replace entity @s enderchest.3 loot cliff_tuna:heads/k4_enderman
loot replace entity @s enderchest.4 loot cliff_tuna:heads/k5_silverfish
loot replace entity @s enderchest.5 loot cliff_tuna:heads/k6_phantom
loot replace entity @s enderchest.6 loot cliff_tuna:heads/k7_blaze
loot replace entity @s enderchest.7 loot cliff_tuna:heads/k8_witch
loot replace entity @s enderchest.8 loot cliff_tuna:heads/k9_husk
loot replace entity @s enderchest.9 loot cliff_tuna:heads/k10_drowned
loot replace entity @s enderchest.10 loot cliff_tuna:heads/k11_1_spider
loot replace entity @s enderchest.11 loot cliff_tuna:heads/k12_stray
loot replace entity @s enderchest.12 loot cliff_tuna:heads/k13_guardian
loot replace entity @s enderchest.13 loot cliff_tuna:heads/k14_ghast
loot replace entity @s enderchest.14 loot cliff_tuna:heads/k15_slime
loot replace entity @s enderchest.15 loot cliff_tuna:heads/k16_shulker

item replace entity @s enderchest.18 with minecraft:map{display:{Name:'[{"text":"<--マップ","italic":false}]'},enderchest:1b}
loot replace entity @s enderchest.22 loot cliff_tuna:enderchest/6_back
loot replace entity @s enderchest.23 loot cliff_tuna:enderchest/5_next
item replace entity @s enderchest.26 with minecraft:dirt{display:{Name:'[{"text":"ドロボウ-->","italic":false}]'},CustomModelData:2,enderchest:1b}
