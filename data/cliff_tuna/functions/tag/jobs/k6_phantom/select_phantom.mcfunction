#ファントムに転職したとき動く関数
function cliff_tuna:tag/system/ender_chest/11_killer_mute

function cliff_tuna:tag/remove_job_tag
tag @s add phantom_mjsk

execute at @s run playsound minecraft:entity.phantom.ambient master @s

loot replace entity @s armor.head loot cliff_tuna:heads/k6_phantom
item modify entity @s armor.head cliff_tuna:set_nbt_job_head
item replace entity @s armor.chest with elytra{Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:5}

tellraw @s ["",{"text":"[System] ","color":"white"},{"text":"ファントム","color":"red"},{"text":"に転職しました","color":"white"}]
tellraw @a[tag=debug] ["",{"text":"[ジョブ選択] ","color":"gold"},{"selector":"@s"},{"text":"-->select_phantom"}]

scoreboard players set @s drop_mjsk 1
