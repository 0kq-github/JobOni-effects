#アイテム抽選

execute as @s[tag=chicken_mjsk,scores={chicken_r_mjsk=0..5}] run give @s minecraft:splash_potion{CustomPotionEffects:[{Id:1,Duration:200,ShowParticles:0b}],CustomPotionColor:50422,display:{Name:'{"text": "俊敏","italic": false}'}}
execute as @s[tag=chicken_mjsk,scores={chicken_r_mjsk=6..8}] run give @s minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:3,Duration:100,ShowParticles:0b}],CustomPotionColor:20726,display:{Name:'{"text": "もっと俊敏","italic": false}'}}
execute as @s[tag=chicken_mjsk,scores={chicken_r_mjsk=9..}] run give @s minecraft:wooden_sword{display:{Name:'{"text": "ノックバック剣","italic": false}'},Damage:59,Enchantments:[{id:"knockback",lvl:10}]}
