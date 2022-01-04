#ランダムポーションの抽選

execute as @s[scores={witch_r_mjsk=0}] run give @a[team=killer_mjsk] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Duration:100}],CustomPotionColor:705525,display:{Name:'[{"text":"俊敏1","italic":false}]'}}
execute as @s[scores={witch_r_mjsk=1}] run give @a[team=killer_mjsk] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:100,ShowParticles:0b}],CustomPotionColor:705525,display:{Name:'[{"text":"俊敏2","italic":false}]'}}
execute as @s[scores={witch_r_mjsk=2}] run give @a[team=killer_mjsk] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:2,Duration:100,ShowParticles:0b}],CustomPotionColor:705525,display:{Name:'[{"text":"俊敏3","italic":false}]'}}
execute as @s[scores={witch_r_mjsk=3}] run give @a[team=killer_mjsk] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:3,Duration:100,ShowParticles:0b}],CustomPotionColor:705525,display:{Name:'[{"text":"俊敏4","italic":false}]'}}
execute as @s[scores={witch_r_mjsk=4}] run give @a[team=killer_mjsk] minecraft:splash_potion{CustomPotionEffects:[{Id:1,Amplifier:4,Duration:100,ShowParticles:0b}],CustomPotionColor:705525,display:{Name:'[{"text":"俊敏5","italic":false}]'}}
execute as @s[scores={witch_r_mjsk=5}] run give @a[team=killer_mjsk] minecraft:splash_potion{CustomPotionEffects:[{Id:17,Amplifier:127,Duration:1200,ShowParticles:0b}],CustomPotionColor:8588055,display:{Name:'[{"text":"餓死してもろて","italic":false}]'}}
execute as @s[scores={witch_r_mjsk=6}] run give @a[team=killer_mjsk] minecraft:splash_potion{CustomPotionEffects:[{Id:30,Duration:200,ShowParticles:0b}],CustomPotionColor:4390900,display:{Name:'"〇〇たいやきくん"'}}
execute as @s[scores={witch_r_mjsk=7..9}] run give @a[team=killer_mjsk] minecraft:lingering_potion{CustomPotionEffects:[{Id:7,ShowParticles:0b}],CustomPotionColor:15728691,display:{Name:'[{"text":"時が来た","italic":false}]'}}
