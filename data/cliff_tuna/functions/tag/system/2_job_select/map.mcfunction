#全員が準備OKを押したとき、もしくは残り時間がなくなったときにマップに全員tpする関数
execute if score map system matches 0 run function cliff_tuna:tag/system/2_job_select/random
execute if score map system matches 1 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_city
execute if score map system matches 2 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_castle
execute if score map system matches 3 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_school
execute if score map system matches 4 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_prison
execute if score map system matches 5 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_yggdrasil
execute if score map system matches 6 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_aquarium

#準備完了をリセット
scoreboard objectives setdisplay list
tag @a remove preparation_mjsk
scoreboard players reset @a ready

scoreboard players reset job_select_timer system
tag @a remove confirm_killer
bossbar set cliff_tuna:job_select_timer players

execute as @r at @s run function cliff_tuna:tag/system/3_ongame/setting_detailed
