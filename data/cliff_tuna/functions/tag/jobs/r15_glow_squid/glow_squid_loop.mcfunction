#loopする
scoreboard players remove @s glow_squid_1_mjsk 1
execute as @a[team=killer_mjsk] at @s positioned ~ ~1 ~ if entity @e[tag=glow_squid_aec_mjsk,distance=..2] run tag @s add glow_squid_p_mjsk
execute as @e[tag=glow_squid_aec_mjsk] at @s run tp @s ^ ^ ^1
execute as @e[tag=glow_squid_aec_mjsk] at @s run particle glow_squid_ink ~ ~ ~ 0.5 0.5 0.5 10 100 normal
execute if score @s glow_squid_1_mjsk matches 1.. run function cliff_tuna:tag/jobs/r15_glow_squid/glow_squid_loop
