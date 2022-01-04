#無職に墜ちる関数
function cliff_tuna:tag/system/ender_chest/31_neet

function cliff_tuna:tag/remove_job_tag
tag @s add unemployed_mjsk

execute as @s[team=killer_mjsk] run loot replace entity @s armor.head loot cliff_tuna:heads/k0_unemployed
execute as @s[team=runner_mjsk] run loot replace entity @s armor.head loot cliff_tuna:heads/r0_unemployed
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

execute as @s[team=killer_mjsk] run tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"無職","color":"red"},{"text":"になりました","color":"white"}]
execute as @s[team=runner_mjsk] run tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"無職","color":"aqua"},{"text":"になりました","color":"white"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_unemployed"}]
