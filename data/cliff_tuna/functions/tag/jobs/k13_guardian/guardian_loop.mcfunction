#loopする
scoreboard players remove @s guardian_mjsk 1
execute as @a[team=runner_mjsk] at @s positioned ~ ~0.5 ~ if entity @e[tag=guardian_p_mjsk,distance=..2] run function cliff_tuna:tag/system/3_ongame/caught_runner
execute as @e[tag=guardian_p_mjsk] at @s run tp @s ^ ^ ^1
execute as @e[tag=guardian_p_mjsk] at @s run particle witch ~ ~ ~ 0.5 0.5 0.5 10 100 force
execute if score @s guardian_mjsk matches 1.. run function cliff_tuna:tag/jobs/k13_guardian/guardian_loop
