
# 玩家进入服务器事件
execute as @a[scores={player_enter=1..}] run function harpymodloader:game/player/data/enter




schedule function harpymodloader:game/tick 1t append