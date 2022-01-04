#スノーゴーレムに転職したときに動く関数
function cliff_tuna:tag/system/ender_chest/21_runner_mute

function cliff_tuna:tag/remove_job_tag
tag @s add snow_golem_mjsk

execute at @s run playsound minecraft:entity.snow_golem.hurt master @s ~ ~ ~ 10

loot replace entity @s armor.head loot cliff_tuna:heads/r12_1_snow_golem
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"スノーゴーレム","color":"aqua"},{"text":"に転職しました"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_snow_golem"}]

scoreboard players set @s drop_mjsk 1
