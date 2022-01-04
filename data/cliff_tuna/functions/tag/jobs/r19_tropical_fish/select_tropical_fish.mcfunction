#熱帯魚に転職したときに動く関数
function cliff_tuna:tag/system/ender_chest/22_runner

function cliff_tuna:tag/remove_job_tag
tag @s add tropical_fish_mjsk

execute at @s run playsound minecraft:entity.tropical_fish.hurt master @s ~ ~ ~ 5

loot replace entity @s armor.head loot cliff_tuna:heads/r19_tropical_fish
item modify entity @s armor.head cliff_tuna:set_nbt_job_head

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"熱帯魚","color":"aqua"},{"text":"に転職しました"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_glow_tropical_fish"}]

scoreboard players set @s drop_mjsk 1
