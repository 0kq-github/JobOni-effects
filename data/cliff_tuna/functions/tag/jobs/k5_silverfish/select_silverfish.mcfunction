#シルバーフィッシュに転職したときの関数
function cliff_tuna:tag/system/ender_chest/11_killer_mute

function cliff_tuna:tag/remove_job_tag
tag @s add silverfish_mjsk

execute at @s run playsound minecraft:entity.silverfish.ambient master @s

loot replace entity @s armor.head loot cliff_tuna:heads/k5_silverfish
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"シルバーフィッシュ","color":"red","italic":false},{"text":"に転職しました","color":"white"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_silverfish"}]

scoreboard players set @s drop_mjsk 1
