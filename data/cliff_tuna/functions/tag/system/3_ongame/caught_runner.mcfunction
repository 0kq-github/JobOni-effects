#ケイサツがドロボウを捕まえたとき。

tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":"が捕まった!"}]
team join caught_mjsk @s
tp @s @e[type=minecraft:armor_stand,tag=prison_mjsk,limit=1]
item replace entity @s armor.chest with minecraft:chainmail_chestplate{Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7,display:{Name:'[{"text":"囚人服","italic":false,"color": "white"}]'}}

#叩かれた音を鳴らす
playsound minecraft:entity.player.attack.crit master @s

#プレイヤーリストの値を変更
scoreboard players set @s playerlist 0

#味方が殴られたら俊敏3ウシ
effect give @a[tag=cow_mjsk] minecraft:speed 30 2
#味方が殴られたときのオオカミ
effect give @a[tag=wolf_mjsk] minecraft:blindness 5 0 true
#味方が殴られたときのミツハチ
execute as @a[tag=bee_mjsk] run give @a[team=runner_mjsk] minecraft:wooden_sword{display:{Name:'"吹っ飛ばし棒（棒）"'},Damage:59,Enchantments:[{id:"knockback",lvl:10}],HideFlags:1}
#自分が行商人だった時、ケイサツにアイテムを配る
execute if entity @s[tag=wandering_trader_mjsk] run loot give @a[team=killer_mjsk] loot cliff_tuna:jobs/r14_wandering_trader/be_beaten

#アイアンゴーレム用の処理
effect give @a[tag=iron_mjsk] minecraft:speed 10 0 true
execute if entity @a[tag=iron_mjsk] run effect give @a[team=killer_mjsk] minecraft:glowing 10 0 true

advancement revoke @s only cliff_tuna:tag/caught_runner
advancement revoke @s only cliff_tuna:tag/self_destruct
