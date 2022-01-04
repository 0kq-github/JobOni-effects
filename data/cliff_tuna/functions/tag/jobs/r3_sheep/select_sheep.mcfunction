#ヒツジに転職したときに動く関数。
function cliff_tuna:tag/system/ender_chest/21_runner_mute

function cliff_tuna:tag/remove_job_tag
tag @s add sheep_mjsk

execute at @s run playsound minecraft:entity.sheep.ambient master @s

loot replace entity @s armor.head loot cliff_tuna:heads/r3_sheep
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"ヒツジ","color":"aqua"},{"text":"に転職しました","color":"white"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_sheep"}]

scoreboard players set @s drop_mjsk 1
