#初期化関数
tellraw @a[tag=debug] "[debug] game_initを実行しました"

#各種タグを剥がす
execute as @a run function cliff_tuna:tag/remove_job_tag
tag @a remove preparation_mjsk
tag @a remove confirm_killer
tag @a remove before_gamestart_mjsk
tag @a remove ongame_mjsk
tag @a remove has_used_mjsk
tag @a remove glow_squid_p_mjsk
tag @a remove horse_value_mjsk

#ゲームで使ったものを消す
kill @e[type=minecraft:armor_stand,tag=prison_mjsk]
kill @e[type=minecraft:armor_stand,tag=prison_effect_mjsk]
kill @e[type=minecraft:armor_stand,tag=wolf_stand_mjsk]
kill @e[type=minecraft:armor_stand,tag=turtle_stand_mjsk]
kill @e[type=trident]
kill @e[type=minecraft:armor_stand,tag=slime_stand_mjsk]

#チームをリセット
team empty caught_mjsk
team empty killer_mjsk
team empty runner_mjsk

clear @a
effect clear @a

#bossbarを非表示に
bossbar set cliff_tuna:timer players
bossbar set cliff_tuna:job_select_timer players

#各種スコアのリセット
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

scoreboard players reset @a ready

scoreboard players reset map system
scoreboard players reset killer system
scoreboard players reset runner system

scoreboard players reset job_select_timer system
scoreboard players reset Timer tagstart_mjsk

gamemode spectator @a
schedule function 0kq:game_end 8s
schedule function cliff_tuna:all/lobby 13s
