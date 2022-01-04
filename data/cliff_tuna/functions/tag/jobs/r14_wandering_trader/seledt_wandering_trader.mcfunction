#行商人に転職したときに動く関数
function cliff_tuna:tag/system/ender_chest/21_runner_mute

function cliff_tuna:tag/remove_job_tag
tag @s add wandering_trader_mjsk

execute at @s run playsound minecraft:entity.wandering_trader.hurt master @s

loot replace entity @s armor.head loot cliff_tuna:heads/r14_wandering_trader
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"行商人","color":"aqua"},{"text":"に転職しました"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_wandering_trader"}]

scoreboard players set @s drop_mjsk 1
