#捕まってる味方ををドロボウ側がタッチしたときに動く関数。

execute if entity @s[tag=!fox_mjsk] run tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":"が解放された!"}]
team join runner_mjsk @s[tag=!fox_mjsk]
item replace entity @s[tag=!fox_mjsk] armor.chest with air
effect clear @s[tag=!fox_mjsk] weakness

#プレイヤーリストの値を変更
scoreboard players set @s playerlist 1

advancement revoke @s only cliff_tuna:tag/touch_friend
