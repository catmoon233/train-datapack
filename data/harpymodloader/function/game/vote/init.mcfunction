## vote/init.mcfunction
# VoteFunction被调用时执行 | 初始化投票功能所需记分板和变量

# function_vote_mapcode  -> 相框实体的编号 | $A的此值代表票数最高的地图编号
# function_vote_mapcode_1 -> 相框实体的票数
scoreboard objectives add function_vote_mapcode dummy
scoreboard objectives add function_vote_mapcode_1 dummy
scoreboard objectives add function_vote_mapcode_2 dummy

scoreboard players set $A function_vote_mapcode 0
scoreboard players set @a function_vote_mapcode_1 -1
scoreboard players set @a function_vote_mapcode_2 -1

# temp用于存储玩家当前选择的地图选项
scoreboard objectives add temp dummy
scoreboard players set @a temp -1

# $A的此值代表游戏阶段
scoreboard players set $A system_gamePlaying 1

# *放弃了一个变量存所有数据的写法，是不是很大胆*
scoreboard objectives add function_vote_mapcode_display_0 dummy
scoreboard objectives add function_vote_mapcode_display_1 dummy
scoreboard objectives add function_vote_mapcode_display_2 dummy
scoreboard objectives add function_vote_mapcode_display_3 dummy
scoreboard objectives add function_vote_mapcode_display_4 dummy
scoreboard objectives add function_vote_mapcode_display_5 dummy
scoreboard objectives add function_vote_mapcode_display_6 dummy

# 为相框实体赋予编号(function_vote_mapcode)
function harpymodloader:game/vote/secondary/debug/-1

# 为有编号的相框实体绑定被右键时以玩家为执行者所执行的指令
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=0}] /scoreboard players set @s temp 0
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=1}] /scoreboard players set @s temp 1
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=2}] /scoreboard players set @s temp 2
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=3}] /scoreboard players set @s temp 3
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=4}] /scoreboard players set @s temp 4
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=5}] /scoreboard players set @s temp 5
tmm:entityData set @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=6}] /scoreboard players set @s temp 6

# system_mapCode -> Code of current map
#  1 = 随机           areas1
#  2 = 飞艇           areas2
#  3 = 星穹列车V2     areas3
#  4 = 原版           areas4
#  5 = 星穹列车放大化  areas5
#  0 = 海盗船         random