#スケルトンに転職したときに動く関数。
function cliff_tuna:tag/system/ender_chest/11_killer_mute

function cliff_tuna:tag/remove_job_tag
tag @s add slime_mjsk

execute at @s run playsound minecraft:entity.slime.hurt master @s

loot replace entity @s armor.head loot cliff_tuna:heads/k15_slime
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"スライム","color":"red"},{"text":"に転職しました","color":"white"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_slime"}]

scoreboard players set @s drop_mjsk 1
