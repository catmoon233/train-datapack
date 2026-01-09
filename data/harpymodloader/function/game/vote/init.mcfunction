scoreboard objectives add function_vote_mapcode dummy
scoreboard objectives add function_vote_mapcode_1 dummy
scoreboard objectives add function_vote_mapcode_2 dummy

scoreboard players set $A function_vote_mapcode 000000
scoreboard players set @a function_vote_mapcode_1 -1
scoreboard players set @a function_vote_mapcode_2 -1

scoreboard objectives add temp dummy
scoreboard players set @a temp -1

scoreboard players set $A system_gamePlaying 1

scoreboard objectives add function_vote_mapcode_display_0 dummy
scoreboard objectives add function_vote_mapcode_display_1 dummy
scoreboard objectives add function_vote_mapcode_display_2 dummy
scoreboard objectives add function_vote_mapcode_display_3 dummy
scoreboard objectives add function_vote_mapcode_display_4 dummy
scoreboard objectives add function_vote_mapcode_display_5 dummy
scoreboard objectives add function_vote_mapcode_display_6 dummy

function harpymodloader:game/vote/secondary/debug/-1

tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=0}] /scoreboard players set @s temp 0
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=1}] /scoreboard players set @s temp 1
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=2}] /scoreboard players set @s temp 2
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=3}] /scoreboard players set @s temp 3
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=4}] /scoreboard players set @s temp 4
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=5}] /scoreboard players set @s temp 5
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=6}] /scoreboard players set @s temp 6

# system_mapCode -> Code of current map
#  1 = 海盗船       areas1
#  2 = 飞艇         areas2
#  3 = 星穹列车V2   areas3
#  4 = 原版         areas4
#  5 = 星穹列车放大化areas5
#  0 = 随机         random