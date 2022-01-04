#パーティクルで見えない
scoreboard players add @s glow_squid_2_mjsk 1
particle minecraft:glow_squid_ink ~ ~ ~ 3 3 3 0 1500 normal @s

execute if score @s glow_squid_2_mjsk matches 100 run tag @s remove glow_squid_p_mjsk
execute if score @s glow_squid_2_mjsk matches 100 run scoreboard players reset @s glow_squid_2_mjsk
