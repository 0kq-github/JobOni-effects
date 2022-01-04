#アイアンゴーレムに転職したときに動く関数。
function cliff_tuna:tag/system/ender_chest/21_runner_mute

function cliff_tuna:tag/remove_job_tag
tag @s add iron_mjsk

execute at @s run playsound minecraft:entity.iron_golem.hurt master @s

loot replace entity @s armor.head loot cliff_tuna:heads/r2_iron_golem
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"アイアンゴーレム","color":"aqua"},{"text":"に転職しました","color":"white"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_iron_golem"}]

scoreboard players set @s drop_mjsk 1
