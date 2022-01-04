function cliff_tuna:tag/system/random/0_9

execute if score @s calculation_mjsk matches 0..4 run tellraw @s [{"text": "トリュフを掘り当てた!"}]
execute if score @s calculation_mjsk matches 0..4 run effect give @s speed 10 5 true

execute if score @s calculation_mjsk matches 5..9 run tellraw @s [{"text": "ゴミを掘り当てた"}]
execute if score @s calculation_mjsk matches 5..9 run give @s poisonous_potato{display:{Name:'{"text":"ゴミ"}'}} 3200
