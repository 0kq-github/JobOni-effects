#クリーパーに転職したときに動く関数。
function cliff_tuna:tag/system/ender_chest/11_killer_mute

function cliff_tuna:tag/remove_job_tag
tag @s add creeper_mjsk

execute at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.6

loot replace entity @s armor.head loot cliff_tuna:heads/k3_creeper
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"クリーパー","color":"red"},{"text":"に転職しました"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_creeper"}]

scoreboard players set @s drop_mjsk 1
