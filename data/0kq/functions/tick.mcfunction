execute as @a[tag=!0kq.joined] run tellraw @a {"translate":"%s§rさんが初めてジョブ鬼に参加しました！","with":[{"selector":"@s","color":"green"}]}
execute as @a[tag=!0kq.joined] at @s run particle firework ~ ~1 ~ 0 0 0 0.5 200 normal
execute as @a[tag=!0kq.joined] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.5 1 0
execute as @a[tag=!0kq.joined] run function 0kq:message
tag @a[tag=!0kq.joined] add 0kq.joined
