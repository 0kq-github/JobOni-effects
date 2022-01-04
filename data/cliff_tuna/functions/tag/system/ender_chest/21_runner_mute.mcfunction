scoreboard players set @s job_select_mjsk 21
execute as @s run function cliff_tuna:tag/system/ender_chest/reset

loot replace entity @s enderchest.0 loot cliff_tuna:heads/r1_villager
loot replace entity @s enderchest.1 loot cliff_tuna:heads/r2_iron_golem
loot replace entity @s enderchest.2 loot cliff_tuna:heads/r3_sheep
loot replace entity @s enderchest.3 loot cliff_tuna:heads/r4_wolf
loot replace entity @s enderchest.4 loot cliff_tuna:heads/r5_chicken
loot replace entity @s enderchest.5 loot cliff_tuna:heads/r6_bee
loot replace entity @s enderchest.6 loot cliff_tuna:heads/r7_polar_bear
loot replace entity @s enderchest.7 loot cliff_tuna:heads/r8_cat
loot replace entity @s enderchest.8 loot cliff_tuna:heads/r9_fox
loot replace entity @s enderchest.9 loot cliff_tuna:heads/r10_rabbit
loot replace entity @s enderchest.10 loot cliff_tuna:heads/r11_cow
loot replace entity @s enderchest.11 loot cliff_tuna:heads/r12_1_snow_golem
loot replace entity @s enderchest.12 loot cliff_tuna:heads/r13_axolotl
loot replace entity @s enderchest.13 loot cliff_tuna:heads/r14_wandering_trader
loot replace entity @s enderchest.14 loot cliff_tuna:heads/r15_glow_squid
loot replace entity @s enderchest.15 loot cliff_tuna:heads/r16_pig
loot replace entity @s enderchest.16 loot cliff_tuna:heads/r17_turtle
loot replace entity @s enderchest.17 loot cliff_tuna:heads/r18_horse

item replace entity @s enderchest.18 with minecraft:dirt{display:{Name:'[{"text":"<--ケイサツ","italic":false}]'},CustomModelData:1,enderchest:1b}
loot replace entity @s enderchest.22 loot cliff_tuna:enderchest/6_back
loot replace entity @s enderchest.23 loot cliff_tuna:enderchest/5_next
item replace entity @s enderchest.26 with minecraft:dirt{display:{Name:'[{"text":"無職-->","italic":false}]'},CustomModelData:3,enderchest:1b}

