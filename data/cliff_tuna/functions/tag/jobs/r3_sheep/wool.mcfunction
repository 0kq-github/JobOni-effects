#効果付きウールを出す関数
execute as @s at @s run function cliff_tuna:tag/system/random/0_15


#スニークしたときに呼び出す効果を抽選する
execute as @s[scores={calculation_mjsk=0}] run item replace entity @s container.2 with minecraft:blue_wool{tag: skill, display: {Name: '[{"text":"俊敏","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに俊敏を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=1}] run item replace entity @s container.2 with minecraft:red_wool{tag: skill, display: {Name: '[{"text":"俊敏","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ケイサツに俊敏を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=2}] run item replace entity @s container.2 with minecraft:lime_wool{tag: skill, display: {Name: '[{"text":"跳躍力上昇","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに跳躍力上昇を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=3}] run item replace entity @s container.2 with minecraft:green_wool{tag: skill, display: {Name: '[{"text":"跳躍力上昇","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ケイサツに跳躍力上昇を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=4}] run item replace entity @s container.2 with minecraft:pink_wool{tag: skill, display: {Name: '[{"text":"移動速度低下","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに移動速度低下を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=5}] run item replace entity @s container.2 with minecraft:light_blue_wool{tag: skill, display: {Name: '[{"text":"移動速度低下","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ケイサツに移動速度低下を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=6}] run item replace entity @s container.2 with minecraft:white_wool{tag: skill, display: {Name: '[{"text":"発光","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに発光を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=7}] run item replace entity @s container.2 with minecraft:black_wool{tag: skill, display: {Name: '[{"text":"発光","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ケイサツに発光を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=8}] run item replace entity @s container.2 with minecraft:light_gray_wool{tag: skill, display: {Name: '[{"text":"盲目","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに盲目を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=9}] run item replace entity @s container.2 with minecraft:gray_wool{tag: skill, display: {Name: '[{"text":"盲目","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ケイサツに盲目を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=10}] run item replace entity @s container.2 with minecraft:yellow_wool{tag: skill, display: {Name: '[{"text":"吐き気","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに吐き気を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=11}] run item replace entity @s container.2 with minecraft:cyan_wool{tag: skill, display: {Name: '[{"text":"吐き気","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ケイサツに吐き気を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=12}] run item replace entity @s container.2 with minecraft:magenta_wool{tag: skill, display: {Name: '[{"text":"毒","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに毒を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=13}] run item replace entity @s container.2 with minecraft:purple_wool{tag: skill, display: {Name: '[{"text":"毒","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ケイサツに毒を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=14}] run item replace entity @s container.2 with minecraft:orange_wool{tag: skill, display: {Name: '[{"text":"落下速度低下","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに落下速度低下を15秒付与する","italic":false,"color":"white"}]']}}
execute as @s[scores={calculation_mjsk=15}] run item replace entity @s container.2 with minecraft:brown_wool{tag: skill, display: {Name: '[{"text":"落下速度低下","italic":false,"color":"white"}]', Lore: ['[{"text":"発動：自動","italic":false,"color":"white"}]', '[{"text":"ドロボウに落下速度低下を15秒付与する","italic":false,"color":"white"}]']}}

#抽選したものの効果を付ける
execute as @s[scores={calculation_mjsk=0}] run effect give @a[team=runner_mjsk] minecraft:speed 15 0 true
execute as @s[scores={calculation_mjsk=1}] run effect give @a[team=killer_mjsk] minecraft:speed 15 0 true
execute as @s[scores={calculation_mjsk=2}] run effect give @a[team=runner_mjsk] minecraft:jump_boost 15 0 true
execute as @s[scores={calculation_mjsk=3}] run effect give @a[team=killer_mjsk] minecraft:jump_boost 15 0 true
execute as @s[scores={calculation_mjsk=4}] run effect give @a[team=runner_mjsk] minecraft:slowness 15 0 true
execute as @s[scores={calculation_mjsk=5}] run effect give @a[team=killer_mjsk] minecraft:slowness 15 0 true
execute as @s[scores={calculation_mjsk=6}] run effect give @a[team=runner_mjsk] minecraft:glowing 15 0 true
execute as @s[scores={calculation_mjsk=7}] run effect give @a[team=killer_mjsk] minecraft:glowing 15 0 true
execute as @s[scores={calculation_mjsk=8}] run effect give @a[team=runner_mjsk] minecraft:blindness 15 0 true
execute as @s[scores={calculation_mjsk=9}] run effect give @a[team=killer_mjsk] minecraft:blindness 15 0 true
execute as @s[scores={calculation_mjsk=10}] run effect give @a[team=runner_mjsk] minecraft:nausea 15 0 true
execute as @s[scores={calculation_mjsk=11}] run effect give @a[team=killer_mjsk] minecraft:nausea 15 0 true
execute as @s[scores={calculation_mjsk=12}] run effect give @a[team=runner_mjsk] minecraft:poison 15 0 true
execute as @s[scores={calculation_mjsk=13}] run effect give @a[team=killer_mjsk] minecraft:poison 15 0 true
execute as @s[scores={calculation_mjsk=14}] run effect give @a[team=runner_mjsk] minecraft:slow_falling 15 0 true
execute as @s[scores={calculation_mjsk=15}] run effect give @a[team=killer_mjsk] minecraft:slow_falling 15 0 true

#抽選したものを伝える
execute as @s[scores={calculation_mjsk=0}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"俊敏","color":"gold"},{"text":"が"},{"text":"ドロボウ","color":"aqua"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=1}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"俊敏","color":"gold"},{"text":"が"},{"text":"ケイサツ","color":"red"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=2}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"跳躍","color":"gold"},{"text":"が"},{"text":"ドロボウ","color":"aqua"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=3}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"跳躍","color":"gold"},{"text":"が"},{"text":"ケイサツ","color":"red"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=4}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"鈍足","color":"gold"},{"text":"が"},{"text":"ドロボウ","color":"aqua"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=5}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"鈍足","color":"gold"},{"text":"が"},{"text":"ケイサツ","color":"red"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=6}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"発光","color":"gold"},{"text":"が"},{"text":"ドロボウ","color":"aqua"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=7}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"発光","color":"gold"},{"text":"が"},{"text":"ケイサツ","color":"red"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=8}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"盲目","color":"gold"},{"text":"が"},{"text":"ドロボウ","color":"aqua"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=9}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"盲目","color":"gold"},{"text":"が"},{"text":"ケイサツ","color":"red"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=10}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"吐き気","color":"gold"},{"text":"が"},{"text":"ドロボウ","color":"aqua"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=11}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"吐き気","color":"gold"},{"text":"が"},{"text":"ケイサツ","color":"red"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=12}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"毒","color":"gold"},{"text":"が"},{"text":"ドロボウ","color":"aqua"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=13}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"毒","color":"gold"},{"text":"が"},{"text":"ケイサツ","color":"red"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=14}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"落下速度低下","color":"gold"},{"text":"が"},{"text":"ドロボウ","color":"aqua"},{"text":"につきます"}]
execute as @s[scores={calculation_mjsk=15}] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":" | ヒツジ> "},{"text":"落下速度低下","color":"gold"},{"text":"が"},{"text":"ケイサツ","color":"red"},{"text":"につきます"}]
