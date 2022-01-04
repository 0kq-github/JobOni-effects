#tp後に時間を設定して、ジョブリストを表示して、ゲームを開始する関数

#時間を300秒に設定
tellraw @a[tag=debug] "[debugメッセージ] 関数select_time_setが動きました。"
scoreboard players set Timer tag_timer_mjsk 320
scoreboard players set #tick 0kq.timer 20

#今回のジョブ一覧を表示
tellraw @a {"text":"===========今回のジョブ一覧===========","color":"gold"}

#ケイサツ側
execute as @a[tag=zombie_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ゾンビ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=skeleton_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"スケルトン","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=creeper_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"クリーパー","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=enderman_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"エンダーマン","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=silverfish_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"シルバーフィッシュ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=phantom_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ファントム","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=blaze_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ブレイズ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=witch_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ウィッチ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=husk_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ハスク","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=drowned_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ドラウンド","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=spider_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"クモ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=stray_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ストレイ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=guardian_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ガーディアン","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=ghast_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ガスト","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=slime_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"スライム","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=shulker_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"シュルカー","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]

#ケイサツ側の無職
execute as @a[team=killer_mjsk,tag=!zombie_mjsk,tag=!skeleton_mjsk,tag=!creeper_mjsk,tag=!enderman_mjsk,tag=!silverfish_mjsk,tag=!phantom_mjsk,tag=!blaze_mjsk,tag=!witch_mjsk,tag=!husk_mjsk,tag=!drowned_mjsk,tag=!spider_mjsk,tag=!stray_mjsk,tag=!guardian_mjsk,tag=!ghast_mjsk,tag=!slime_mjsk,tag=!shulker_mjsk] run tellraw @a [{"selector":"@s"},{"text":"は","color":"white"},{"text":"無職","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]

#区切り
tellraw @a {"text":"==================================","color":"gold"}

#ドロボウ側
execute as @a[tag=villager_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"村人","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=chicken_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ニワトリ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=sheep_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ヒツジ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=iron_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"アイアンゴーレム","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=bee_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ミツバチ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=wolf_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"オオカミ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=polar_bear_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"シロクマ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=cat_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ネコ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=fox_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"キツネ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=rabbit_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ウサギ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=cow_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ウシ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=snow_golem_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"スノーゴーレム","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=axolotl_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ウーパールーパー","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=wandering_trader_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"行商人","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=glow_squid_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ヒカリイカ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=pig_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ブタ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=turtle_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"カメ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=horse_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"ウマ","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]
execute as @a[tag=tropical_fish_mjsk] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"text":"熱帯魚","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]

#ドロボウ側の無職
execute as @a[team=runner_mjsk,tag=!villager_mjsk,tag=!iron_mjsk,tag=!sheep_mjsk,tag=!bee_mjsk,tag=!chicken_mjsk,tag=!wolf_mjsk,tag=!polar_bear_mjsk,tag=!cat_mjsk,tag=!fox_mjsk,tag=!rabbit_mjsk,tag=!cow_mjsk,tag=!snow_golem_mjsk,tag=!axolotl_mjsk,tag=!wandering_trader_mjsk,tag=!glow_squid_mjsk,tag=!pig_mjsk,tag=!turtle_mjsk,tag=!horse_mjsk,tag=!tropical_fish_mjsk] run tellraw @a [{"selector":"@s"},{"text":"は","color":"white"},{"text":"無職","bold":true,"underlined":true,"color":"white"},{"text":"です。","color":"white"}]

tellraw @a {"text":"==================================","color":"gold"}

#スタートカウントを開始
scoreboard players set Timer tagstart_mjsk 320
function cliff_tuna:tag/system/3_ongame/startcount

effect give @a[team=killer_mjsk] weakness 15 5 true

tag @a add before_gamestart_mjsk

function cliff_tuna:all/playerlist

#ゲームスタート
gamemode adventure @a
difficulty normal
tp @a @e[type=armor_stand,tag=prison_mjsk,limit=1]

#スコアボードをリセット
scoreboard players reset @a axolotl_1_mjsk
scoreboard players reset @a axolotl_2_mjsk
scoreboard players reset @a slime_mjsk

effect clear @a
