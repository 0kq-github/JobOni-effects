#ブタに転職したときに動く関数
function cliff_tuna:tag/system/ender_chest/21_runner_mute

function cliff_tuna:tag/remove_job_tag
tag @s add pig_mjsk

execute at @s run playsound minecraft:entity.pig.hurt master @s ~ ~ ~

loot replace entity @s armor.head loot cliff_tuna:heads/r16_pig
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"ブタ","color":"aqua"},{"text":"に転職しました"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_pig"}]

scoreboard players set @s drop_mjsk 1
