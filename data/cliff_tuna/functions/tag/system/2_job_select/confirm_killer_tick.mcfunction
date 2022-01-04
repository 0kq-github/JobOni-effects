#準備OKボタンのずっと動いてる関数

execute unless entity @a[tag=preparation_mjsk] run scoreboard players set job_select_timer system 6
execute unless entity @a[tag=preparation_mjsk] run tag @a add preparation_mjsk

execute if score map system matches 0 run title @a actionbar {"text":"選択中のマップ：ランダム","color":"gold","bold": true}
execute if score map system matches 1 run title @a actionbar {"text":"選択中のマップ：青坂ロールタウン","color":"gold","bold": true}
execute if score map system matches 2 run title @a actionbar {"text":"選択中のマップ：河猫城","color":"gold","bold": true}
execute if score map system matches 3 run title @a actionbar {"text":"選択中のマップ：日出ずる小学校","color":"gold","bold": true}
execute if score map system matches 4 run title @a actionbar {"text":"選択中のマップ：三兎刑務所","color":"gold","bold": true}
execute if score map system matches 5 run title @a actionbar {"text":"選択中のマップ：ユグドラシル","color":"gold","bold": true}
execute if score map system matches 6 run title @a actionbar {"text":"選択中のマップ：寒月水族館","color":"gold","bold": true}
