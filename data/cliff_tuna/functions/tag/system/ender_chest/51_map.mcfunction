scoreboard players set @s job_select_mjsk 51
execute as @s run function cliff_tuna:tag/system/ender_chest/reset

item replace entity @s enderchest.1 with paper{enderchest:1b,display:{Name:'[{"text":"青坂ロールタウン","italic":false,"color": "dark_aqua"}]',Lore:['[{"text":"住宅、図書館、公園、森、遺跡……","italic":false,"color":"white"}]','[{"text":"一通り揃っているようでなにか足りないような気がする街。","italic":false,"color":"white"}]','[{"text":"建物内はもちろん、屋根の上へ登っても怒られない。","italic":false,"color":"white"}]','[{"text":"なお、街のシンボルである噴水は故障中だ。","italic":false,"color":"white"}]']}}
item replace entity @s enderchest.3 with paper{enderchest:1b,display:{Name:'[{"text":"河猫城","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"400年前に建てられ、線香花火が","italic":false,"color":"white"}]','[{"text":"燃え移って消失した。","italic":false,"color":"white"}]','[{"text":"今年2人の大工によって復元され、","italic":false,"color":"white"}]','[{"text":"今では多くの子どもたちの","italic":false,"color":"white"}]','[{"text":"秘密基地となっている。","italic":false,"color":"white"}]','[{"text":"城じゅうに設置されたテレ","italic":false,"color":"white"}]','[{"text":"ポート看板をクリックすれば、","italic":false,"color":"white"}]','[{"text":"制作者もどこへ飛ぶかわからない。","italic":false,"color":"white"}]']}}
item replace entity @s enderchest.5 with paper{enderchest:1b,display:{Name:'[{"text":"日出ずる学校","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"全校生徒250人の少子化を","italic":false,"color":"white"}]','[{"text":"もろに受けている小学校。","italic":false,"color":"white"}]','[{"text":"教室が余りはじめ、","italic":false,"color":"white"}]','[{"text":"教師たちの掃除の","italic":false,"color":"white"}]','[{"text":"モチベーションが下がっている。","italic":false,"color":"white"}]','[{"text":"職員室の冷蔵庫に","italic":false,"color":"white"}]','[{"text":"「柿冷えてます」という張り紙が目撃され、","italic":false,"color":"white"}]','[{"text":"生徒たちから大ブーイングが起きたらしい。","italic":false,"color":"white"}]']}}
item replace entity @s enderchest.11 with paper{enderchest:1b,display:{Name:'[{"text":"三兎刑務所","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"昨年、最強看守長が降臨し、","italic":false,"color":"white"}]','[{"text":"受刑者から","italic":false,"color":"white"}]','[{"text":"「あそこだけには入りたくない」","italic":false,"color":"white"}]','[{"text":"と恐れられる刑務所。","italic":false,"color":"white"}]','[{"text":"ただしお風呂が綺麗なので、","italic":false,"color":"white"}]','[{"text":"お風呂好きの受刑者は甘んじて","italic":false,"color":"white"}]','[{"text":"ここの牢に入る者もいるらしい。","italic":false,"color":"white"}]']}}
item replace entity @s enderchest.13 with paper{enderchest:1b,display:{Name:'[{"text":"ユグドラシル","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"どこかの世界にあるといわれている世界樹。","italic":false,"color":"white"}]','[{"text":"その中には様々な平行世界の景色が","italic":false,"color":"white"}]','[{"text":"詰まっているという。","italic":false,"color":"white"}]','[{"text":"だがその実態は世界を渡り歩き","italic":false,"color":"white"}]','[{"text":"取り込んで養分にしてしまう","italic":false,"color":"white"}]','[{"text":"世界を食らうという意味の「世界樹」","italic":false,"color":"white"}]','[{"text":"この樹が見えたならもしかすれば","italic":false,"color":"white"}]','[{"text":"あなたの世界も…","italic":false,"color":"white"}]','[{"text":"(難易度の都合上、ランダムでは選ばれません)","italic":false,"color":"dark_gray"}]']}}
item replace entity @s enderchest.15 with paper{enderchest:1b,display:{Name:'[{"text":"寒月水族館","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"12月に建設が終わった最新型の水族館","italic":false,"color":"white"}]','[{"text":"中央の球体の水槽が目玉で、","italic":false,"color":"white"}]','[{"text":"なんと中に入ることができる","italic":false,"color":"white"}]','[{"text":"お土産屋の、キーホルダーやぬいぐるみが","italic":false,"color":"white"}]','[{"text":"人気でよく売れているらしい","italic":false,"color":"white"}]']}}

item replace entity @s enderchest.18 with minecraft:dirt{display:{Name:'[{"text":"<--無職","italic":false}]'},CustomModelData:3,enderchest:1b}
loot replace entity @s enderchest.22 loot cliff_tuna:enderchest/6_back
item replace entity @s enderchest.26 with minecraft:dirt{display:{Name:'[{"text":"ケイサツ-->","italic":false}]'},CustomModelData:1,enderchest:1b}

#0kq
execute at @s run playsound entity.bat.takeoff master @s ~ ~ ~ 0.8 1 0