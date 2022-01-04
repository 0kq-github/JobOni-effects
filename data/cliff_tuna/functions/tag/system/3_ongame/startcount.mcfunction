#カウント時に1秒ごとに動く関数
scoreboard players remove Timer tagstart_mjsk 1
execute if score #tick 0kq.timer matches 1..20 run scoreboard players remove #tick 0kq.timer 1
execute if score #tick 0kq.timer matches 0 run scoreboard players set #tick 0kq.timer 20
scoreboard players operation #sec 0kq.timer = Timer tagstart_mjsk
scoreboard players operation #sec 0kq.timer += #20 0kq.calc
scoreboard players operation #sec 0kq.timer /= #20 0kq.calc

title @a times 0 20 0
execute if score #tick 0kq.timer matches 20 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 19 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 18 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 17 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 16 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 15 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 14 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 13 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 12 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 11 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 10 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 9 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 8 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 7 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 6 run title @a title {"translate":">>>\u0020\u0020\u0020\u0020%s\u0020\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 5 run title @a title {"translate":">>>\u0020\u0020\u0020%s\u0020\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 4 run title @a title {"translate":">>>\u0020\u0020%s\u0020\u0020<<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 3 run title @a title {"translate":">>%s<<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 2 run title @a title {"translate":">%s<","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}
execute if score #tick 0kq.timer matches 1 run title @a title {"translate":"%s","with": [{"score":{"name":"#sec","objective":"0kq.timer"}}]}

execute if score #tick 0kq.timer matches 20 unless score Timer tagstart_mjsk matches ..19 at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.5 1 0


execute if score Timer tagstart_mjsk matches 1.. run schedule function cliff_tuna:tag/system/3_ongame/startcount 1t
execute if score Timer tagstart_mjsk matches 0 run function cliff_tuna:tag/system/3_ongame/after_startcount
