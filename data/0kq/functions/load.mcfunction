scoreboard objectives modify killchicken displayname "鶏キル数"
scoreboard objectives add 0kq.calc dummy
scoreboard objectives add 0kq.timer dummy
scoreboard objectives add 0kq.check dummy
scoreboard players set #20 0kq.calc 20
execute unless score #check 0kq.check matches 1 run function 0kq:init
