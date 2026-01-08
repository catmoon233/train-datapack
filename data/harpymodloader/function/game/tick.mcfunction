
# 玩家进入服务器事件
execute as @a[scores={player_enter=1..}] run function harpymodloader:game/player/data/enter
execute if score $A system_gamePlaying matches 1 run function harpymodloader:game/vote/tick



schedule function harpymodloader:game/tick 1t append