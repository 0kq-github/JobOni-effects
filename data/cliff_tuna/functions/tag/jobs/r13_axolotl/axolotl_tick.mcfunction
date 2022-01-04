#捕まってから50秒後、生き返る
execute if entity @s[team=runner_mjsk] run scoreboard players set @s axolotl_1_mjsk 0
execute if entity @s[team=caught_mjsk] run scoreboard players add @s axolotl_1_mjsk 1
execute if score @s axolotl_1_mjsk matches 900 run function cliff_tuna:tag/system/random/0_999
execute if score @s axolotl_1_mjsk matches 900 if score @s calculation_mjsk matches 1.. run tellraw @a [{"text": "<"},{"selector":"@s"},{"text": " | | ウーパールーパー> うぱぁ!!"}]
execute if score @s axolotl_1_mjsk matches 900 if score @s calculation_mjsk matches 0 run tellraw @a [{"text": "<"},{"selector":"@s"},{"text": " | | ウーパールーパー> うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!うぱぁ!!"}]
execute if score @s axolotl_1_mjsk matches 1000.. run function cliff_tuna:tag/system/3_ongame/touch_friend

#乾燥
execute unless entity @s[predicate=cliff_tuna:underwater_mjsk] run scoreboard players add @s axolotl_2_mjsk 1
execute if entity @s[predicate=cliff_tuna:underwater_mjsk] if score @s axolotl_2_mjsk matches 300.. run scoreboard players remove @s axolotl_2_mjsk 15

effect give @s[scores={axolotl_2_mjsk=600..}] slowness 1 0 true
effect give @s[scores={axolotl_2_mjsk=1200..}] slowness 1 1 true
effect give @s[scores={axolotl_2_mjsk=1800..}] slowness 1 2 true
effect give @s[scores={axolotl_2_mjsk=2400..}] slowness 1 3 true
effect give @s[scores={axolotl_2_mjsk=3000..}] slowness 1 4 true
effect give @s[scores={axolotl_2_mjsk=3600..}] slowness 1 5 true
effect give @s[scores={axolotl_2_mjsk=4200..}] slowness 1 6 true
effect give @s[scores={axolotl_2_mjsk=4800..}] slowness 1 7 true
effect give @s[scores={axolotl_2_mjsk=5400..}] slowness 1 8 true

#水生生物
effect give @s dolphins_grace 1 0 true
effect give @s water_breathing 1 0 true

#ドロップ処理
execute if entity @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r13_axolotl/items
execute if entity @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
