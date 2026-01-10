execute as @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=0..}] run scoreboard players reset @s function_vote_mapcode

execute as @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=0..},sort=random] run function harpymodloader:game/vote/secondary/selectmap/secondary/6

scoreboard objectives remove function_vote_mapcode
scoreboard objectives remove function_vote_mapcode_1
scoreboard objectives remove function_vote_mapcode_2
scoreboard objectives remove temp
scoreboard objectives remove function_vote_mapcode_display_0
scoreboard objectives remove function_vote_mapcode_display_1
scoreboard objectives remove function_vote_mapcode_display_2
scoreboard objectives remove function_vote_mapcode_display_3
scoreboard objectives remove function_vote_mapcode_display_4
scoreboard objectives remove function_vote_mapcode_display_5
scoreboard objectives remove function_vote_mapcode_display_6

scoreboard players set $A system_gamePlaying 2

