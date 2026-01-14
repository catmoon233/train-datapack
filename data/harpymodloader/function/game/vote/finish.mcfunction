## vote\finish.mcfunction
# 投票功能生命周期结束时被执行 | 选择地图并清除计分项


# 票数不为最高的选项记分板重置
execute as @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=0..}] unless score @s function_vote_mapcode_1 = $A function_vote_mapcode_1 run scoreboard players reset @s function_vote_mapcode_1
# 随机一个现存最高票数的选项
function harpymodloader:game/vote/secondary/selectmap/secondary/7
# 清除玩家侧准备方式
clear @a ender_pearl

tp @a[scores={function_vote_ready=0}] 100 0 100

# 清除VoteFunction相关记分板
scoreboard objectives remove function_vote_mapcode
scoreboard objectives remove function_vote_mapcode_1
scoreboard objectives remove function_vote_mapcode_2
scoreboard objectives remove temp
scoreboard objectives remove temp_1
scoreboard objectives remove temp_2
scoreboard objectives remove function_vote_mapcode_display_0
scoreboard objectives remove function_vote_mapcode_display_1
scoreboard objectives remove function_vote_mapcode_display_2
scoreboard objectives remove function_vote_mapcode_display_3
scoreboard objectives remove function_vote_mapcode_display_4
scoreboard objectives remove function_vote_mapcode_display_5
scoreboard objectives remove function_vote_mapcode_display_6
scoreboard objectives remove function_vote_ready




# * 0-99 Lobby
# * 100-199 Game
scoreboard players set $A system_gamePlaying 100

function harpymodloader:commands/raw_modstart


