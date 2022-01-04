#準備中のタイマーを動かす関数

#時間を減らす
scoreboard players remove job_select_timer system 1

#時間を名前に表示
execute store result bossbar cliff_tuna:job_select_timer value run scoreboard players get job_select_timer system
bossbar set cliff_tuna:job_select_timer name ["TPまであと",{"score":{"name":"job_select_timer","objective":"system"},"color":"gold"},"秒"]

execute if score job_select_timer system matches ..5 run title @a title [{"score":{"name":"job_select_timer","objective":"system"}}]
execute if score job_select_timer system matches ..5 at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.3

#残り時間があったらもう一度繰り返す
execute if entity @a[tag=confirm_killer] if score job_select_timer system matches 1.. run schedule function cliff_tuna:tag/system/2_job_select/bossbar 1s

execute if entity @a[tag=confirm_killer] if score job_select_timer system matches ..0 run function cliff_tuna:tag/system/2_job_select/map
