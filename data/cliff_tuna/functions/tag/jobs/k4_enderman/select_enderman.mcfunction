#エンダーマンに転職したときに動く関数。
function cliff_tuna:tag/system/ender_chest/11_killer_mute

function cliff_tuna:tag/remove_job_tag
tag @s add enderman_mjsk

execute at @s run playsound minecraft:entity.enderman.teleport master @s

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"エンダーマン","color":"red"},{"text":"に転職しました"}]

loot replace entity @s armor.head loot cliff_tuna:heads/k4_enderman
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_enderman"}]

scoreboard players set @s drop_mjsk 1
