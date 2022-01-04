#エフェクトを与える
effect give @s speed 20 1 true
tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":" | ウマ> 追☆風☆参☆考"}]

advancement revoke @s only cliff_tuna:tag/horse_touch_others
