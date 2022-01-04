#ジョブ鬼ごっこ中にkillerがタッチされたら動く関数（実行者：killer）

#シルバーフィッシュが叩かれたら盲目と鈍足を付ける
effect give @s[tag=silverfish_mjsk] minecraft:blindness 20 0 true
effect give @s[tag=silverfish_mjsk] minecraft:slowness 10 127 true

#ゾンビが叩かれたら、ほかのゾンビがそのもとにtpする。
tp @s[tag=zombie_mjsk] @r[team=killer_mjsk]

#エンダーマンが叩かれたときに光速と盲目を付ける
effect give @s[tag=enderman_mjsk] minecraft:blindness 20 0 true
effect give @s[tag=enderman_mjsk] minecraft:speed 10 127 true

#スケルトンが叩かれたときに盲目を付ける
effect give @s[tag=skeleton_mjsk] blindness 15 0 true

#情けなく撒き散らせ
execute as @s[tag=witch_mjsk] run loot give @a[team=runner_mjsk] loot cliff_tuna:jobs/k8_witch/random_3

#クリーパーロケット
effect give @s[tag=creeper_mjsk] levitation 1 19 true

#ハスクが殴られたとき
effect give @s[tag=husk_mjsk] minecraft:blindness 15 0 true
effect give @s[tag=husk_mjsk] minecraft:nausea 15 0 true
effect give @s[tag=husk_mjsk] minecraft:slowness 15 127 true

#ストレイが殴られたとき
effect give @s[tag=stray_mjsk] slowness 30 127 true
effect give @s[tag=stray_mjsk] weakness 30 9 true

advancement revoke @a only cliff_tuna:tag/killer_touched
