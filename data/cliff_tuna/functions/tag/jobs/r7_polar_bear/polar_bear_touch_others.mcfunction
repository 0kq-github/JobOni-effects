#プレイヤーがシロクマにタッチされたときに動く関数（実行者：殴られたプレイヤー）

#捕食者（殴ると弱体化）
effect give @s minecraft:weakness 5 9 false

advancement revoke @s only cliff_tuna:tag/polar_bear_touch_others
