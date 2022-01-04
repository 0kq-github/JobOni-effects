#ゲーム中ずっと動いてるキツネの関数

#透明化
execute as @s[nbt={SelectedItem:{id:"minecraft:dragon_head"}}] run effect give @s minecraft:invisibility 1 0 true
execute as @s[nbt={SelectedItem:{id:"minecraft:dragon_head"}}] run item replace entity @s armor.head with kelp{display:{Name:'{"text": "コンブ（迫真）","italic": false}'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:1}
execute as @s[nbt=!{SelectedItem:{id:"minecraft:dragon_head"}}] run loot replace entity @s armor.head loot cliff_tuna:heads/r9_fox


#ドロップの処理
execute as @s[scores={drop_mjsk=1..}] run function cliff_tuna:tag/jobs/r9_fox/items
execute as @s[scores={drop_mjsk=1..}] run scoreboard players reset @s drop_mjsk
