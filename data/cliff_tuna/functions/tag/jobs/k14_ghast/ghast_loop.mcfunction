#loopする
scoreboard players remove @s ghast_mjsk 1
execute as @a[team=runner_mjsk] at @s positioned ~ ~0.5 ~ if entity @e[tag=ghast_aec_mjsk,distance=..1.5] run function cliff_tuna:tag/system/3_ongame/caught_runner
execute as @e[tag=ghast_aec_mjsk] at @s run tp @s ^ ^ ^1
execute as @e[tag=ghast_aec_mjsk] at @s run particle lava ~ ~ ~ 0.1 0.1 0.1 0 100 force
execute if score @s ghast_mjsk matches 1.. run function cliff_tuna:tag/jobs/k14_ghast/ghast_loop
