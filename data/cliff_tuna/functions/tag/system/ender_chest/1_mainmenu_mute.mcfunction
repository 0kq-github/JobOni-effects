scoreboard players reset @s enderchest_mjsk
execute as @s run function cliff_tuna:tag/system/ender_chest/reset

scoreboard players set @s job_select_mjsk 1

item replace entity @s[tag=preparation_mjsk] enderchest.4 with minecraft:red_concrete{enderchest:1b,display:{Name:'[{"text":"準備を完了する","italic":false}]'}}
item replace entity @s[tag=!preparation_mjsk] enderchest.4 with minecraft:lime_concrete{enderchest:1b,display:{Name:'[{"text":"準備完了しました","italic":false},{"text": "(取り消し不可)","color": "red"}]',Lore:['[{"text":"準備完了した人はTabを押したときに","italic":false,"color":"gray"}]', '[{"text":"名前の横に1と表示されます","italic":false,"color":"gray"}]']}}

item replace entity @s enderchest.10 with minecraft:dirt{display:{Name:'[{"text":"ケイサツ","italic":false}]'},CustomModelData:1,enderchest:1b}
item replace entity @s enderchest.12 with minecraft:dirt{display:{Name:'[{"text":"ドロボウ","italic":false}]'},CustomModelData:2,enderchest:1b}
item replace entity @s enderchest.14 with minecraft:dirt{display:{Name:'[{"text":"無職","italic":false}]'},CustomModelData:3,enderchest:1b}
item replace entity @s enderchest.16 with map{display:{Name:'[{"text":"マップ","italic":false}]'},enderchest:1b}
