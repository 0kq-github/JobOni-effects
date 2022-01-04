#シュルカーの弾飛ばす
execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^0.8 {Tags:[shulker_bullet_dummy_mjsk],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon minecraft:shulker_bullet ^ ^ ^1 {Tags:["shulker_bullet_mjsk"],NoGravity:1b}
data modify entity @e[tag=shulker_bullet_mjsk,limit=1] Motion set from entity @e[tag=shulker_bullet_dummy_mjsk,limit=1] Pos
kill @e[tag=shulker_bullet_dummy_mjsk]
data modify entity @e[tag=shulker_bullet_mjsk,limit=1] Owner set from entity @s UUID
scoreboard players set @e[tag=shulker_bullet_mjsk,limit=1,sort=nearest] shulker_mjsk 80
tag @e[tag=shulker_bullet_mjsk,limit=1,sort=nearest] remove shulker_bullet_mjsk
