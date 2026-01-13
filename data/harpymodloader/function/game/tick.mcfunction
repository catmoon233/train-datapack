
# 玩家进入服务器事件
execute as @a[scores={player_enter=1..}] run function harpymodloader:game/player/data/enter

# 投票阶段
execute if score $A system_gamePlaying matches 1 run function harpymodloader:game/vote/tick

# 计时器
execute if score $A setting_timer_type matches 0 run scoreboard players remove $A timer 1
execute if score $A setting_timer_type matches 1 run scoreboard players add $A timer 1

scoreboard players operation $A timer_minute = $A timer
scoreboard players operation $A timer_minute /= $1200 number

scoreboard players operation $A timer_second = $A timer
scoreboard players operation $A timer_second /= $20 number

scoreboard players operation $A timer_half_tick = $A timer
scoreboard players operation $A timer_half_tick /= $10 number

scoreboard players operation $A timer_tick = $A timer
scoreboard players operation $A timer_tick %= $20 number

scoreboard players operation $A timer_tick_format = $A timer_tick
scoreboard players operation $A timer_tick_format *= $5 number

schedule function harpymodloader:game/tick 1t append