## 统计数据
scoreboard objectives add stats_gamePlayed dummy

## 地图总控
scoreboard objectives add system_gamePlaying dummy
scoreboard objectives add system_mapCode dummy

## 玩家数据
scoreboard objectives add player_enter custom:leave_game
# scoreboard objectives add player_ingame dummy


## 调试数据
scoreboard objectives add debug_mode dummy


## 计分项初始化赋值


 
# system_mapCode -> Code of current map
#  1 = 海盗船       areas1
#  2 = 飞艇         areas2
#  3 = 星穹列车V2   areas3
#  4 = 原版         areas4
#  5 = 星穹列车Big  araes5

# system_gamePlaying -> 游戏阶段

# system_gamePlayed -> 游戏进行时间
#  0 -> lobby
#  1 -> vote
#  2 -> playing

execute unless score $A stats_gamePlayed matches -2147483648..2147483647 run scoreboard players set $A stats_gamePlayed 0
execute unless score $A system_gamePlaying matches -2147483648..2147483647 run scoreboard players set $A system_gamePlaying 0
execute unless score $A system_mapCode matches -2147483648..2147483647 run scoreboard players set $A system_mapCode 1
execute unless score $A debug_mode matches -2147483648..2147483647 run scoreboard players set $A debug_mode 0


## 监听
schedule clear harpymodloader:game/tick
schedule function harpymodloader:game/tick 1t replace