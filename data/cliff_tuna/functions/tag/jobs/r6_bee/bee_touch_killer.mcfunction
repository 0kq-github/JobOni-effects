#ハチがケイサツを殴ったときに実行される関数（実行者：ハチ）
execute as @s[tag=bee_mjsk,scores={bee_r_mjsk=0..4}] run effect give @s minecraft:nausea 30 0 true

advancement revoke @s only cliff_tuna:tag/bee_touch_killer
