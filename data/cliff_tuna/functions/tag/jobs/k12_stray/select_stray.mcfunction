#スケルトンに転職したときに動く関数。
function cliff_tuna:tag/system/ender_chest/11_killer_mute

function cliff_tuna:tag/remove_job_tag
tag @s add stray_mjsk

execute at @s run playsound minecraft:entity.stray.hurt master @s

loot replace entity @s armor.head loot cliff_tuna:heads/k12_stray
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"ストレイ","color":"red"},{"text":"に転職しました","color":"white"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_stray"}]

scoreboard players set @s drop_mjsk 1
