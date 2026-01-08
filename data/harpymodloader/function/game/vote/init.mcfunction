scoreboard objectives add function_vote_mapcode dummy
scoreboard objectives add function_vote_mapcode_1 dummy
scoreboard objectives add function_vote_mapcode_2 dummy

scoreboard players set $A function_vote_mapcode 000000
scoreboard players set @a function_vote_mapcode_1 -1
scoreboard players set @a function_vote_mapcode_2 -1

scoreboard objectives add temp dummy
scoreboard players set @a temp -1



# system_mapCode -> Code of current map
#  1 = 海盗船       areas1
#  2 = 飞艇         areas2
#  3 = 星穹列车V2   areas3
#  4 = 原版         areas4
#  5 = 星穹列车Big  areas5
#  0 = 随机         random