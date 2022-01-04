
execute as @s at @s run function cliff_tuna:tag/system/random/0_9
#何が当たるか抽選
effect give @s[tag=cat_mjsk,scores={calculation_mjsk=0}] minecraft:glowing 20 0 true
effect give @s[tag=cat_mjsk,scores={calculation_mjsk=1..4}] minecraft:slowness 20 0 true
give @s[tag=cat_mjsk,scores={calculation_mjsk=5..8}] minecraft:arrow 1
give @s[tag=cat_mjsk,scores={calculation_mjsk=9}] minecraft:bow{Damage:379} 1
#煽る
tellraw @s[tag=cat_mjsk,scores={calculation_mjsk=0}] "[cat] 大ハズレ、デバフが付くよ☆"
tellraw @s[tag=cat_mjsk,scores={calculation_mjsk=1..4}] "[cat] ハズレ、デバフが付くよ♪"
tellraw @s[tag=cat_mjsk,scores={calculation_mjsk=5..8}] "[cat] あた…り？"
tellraw @s[tag=cat_mjsk,scores={calculation_mjsk=9}] "[cat] 大あた…り？"
