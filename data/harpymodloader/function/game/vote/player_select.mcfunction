
### 处理玩家选择地图逻辑

# 未准备就不处理投票（防止选了不玩捣乱）
execute as @a if score @s function_vote_ready matches 0 run function harpymodloader:game/vote/secondary/ready/vote_ready_1

execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches -1 if score @s function_vote_mapcode_2 matches -1 run function harpymodloader:game/vote/secondary/selectmap/1
execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches 0.. if score @s function_vote_mapcode_2 matches -1 run function harpymodloader:game/vote/secondary/selectmap/2
execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches 0.. if score @s function_vote_mapcode_2 matches 0.. run function harpymodloader:game/vote/secondary/selectmap/3

### 地图计算票数

# | $A function_vote_mapcode -> 总票数（统计）
# | $A function_vote_mapcode_1 -> 总票数（用于处理）

# | @e[type=exposure:photograph_frame,scores={function_vote_mapcode=0..}] function_vote_mapcode_1 -> 可选项的票数

scoreboard players set $A function_vote_mapcode 0
scoreboard players set @e[type=exposure:photograph_frame,scores={function_vote_mapcode=0..}] function_vote_mapcode_1 0
scoreboard players set $A function_vote_mapcode_1 0

execute as @a[scores={function_vote_mapcode_1=0}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=0}] function_vote_mapcode_1 1
execute as @a[scores={function_vote_mapcode_2=0}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=0}] function_vote_mapcode_1 1

execute as @a[scores={function_vote_mapcode_1=1}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=1}] function_vote_mapcode_1 1
execute as @a[scores={function_vote_mapcode_2=1}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=1}] function_vote_mapcode_1 1

execute as @a[scores={function_vote_mapcode_1=2}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=2}] function_vote_mapcode_1 1
execute as @a[scores={function_vote_mapcode_2=2}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=2}] function_vote_mapcode_1 1

execute as @a[scores={function_vote_mapcode_1=3}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=3}] function_vote_mapcode_1 1
execute as @a[scores={function_vote_mapcode_2=3}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=3}] function_vote_mapcode_1 1

execute as @a[scores={function_vote_mapcode_1=4}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=4}] function_vote_mapcode_1 1
execute as @a[scores={function_vote_mapcode_2=4}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=4}] function_vote_mapcode_1 1

execute as @a[scores={function_vote_mapcode_1=5}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=5}] function_vote_mapcode_1 1
execute as @a[scores={function_vote_mapcode_2=5}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=5}] function_vote_mapcode_1 1

execute as @a[scores={function_vote_mapcode_1=6}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=6}] function_vote_mapcode_1 1
execute as @a[scores={function_vote_mapcode_2=6}] run scoreboard players add @e[type=exposure:photograph_frame,scores={function_vote_mapcode=6}] function_vote_mapcode_1 1

# 冒泡排序（JAVA版的排序需要调用函数，这是特性）
execute as @e[type=exposure:photograph_frame,scores={function_vote_mapcode=0..}] run function harpymodloader:game/vote/secondary/sort/5

### 显示票数
scoreboard players operation $A function_vote_mapcode = $A function_vote_mapcode_1

### Vote Code
# 0 -> 随机
# 1 -> 飞艇
# 2 -> 星穹列车V2
# 3 -> 原版
# 4 -> 星穹列车放大化
# 5 -> 海盗船
# 6 -> 宽体原版

### Map Code
# areas1 -> 海盗船
# areas2 -> 飞艇
# areas3 -> 星穹列车V2
# areas4 -> 列车
# areas5 -> 星穹列车V1
# areas6 -> 大列车

title @a[gamemode=adventure,scores={function_vote_ready=0}] actionbar {"text": "","extra": [{"text": "尚未准备","color": "red"}]}
title @a[gamemode=adventure,scores={function_vote_ready=1}] actionbar {"text":"","extra":[{"text":"§r随机 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=0}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r飞艇 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=1}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r星穹列车V2 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=2}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r列车 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=3}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r星穹列车 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=4}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r海盗船 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=5}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r大列车 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=6}]","objective":"function_vote_mapcode_1"},"color":"gray"}]}

### 粒子特效 (宏函数会动态解析占用性能较高，改为静态函数调用)
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=1}] at @s run function harpymodloader:game/vote/secondary/particle/vote_particle_1
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=2}] at @s run function harpymodloader:game/vote/secondary/particle/vote_particle_2
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=3}] at @s run function harpymodloader:game/vote/secondary/particle/vote_particle_3
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=4}] at @s run function harpymodloader:game/vote/secondary/particle/vote_particle_4
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=5}] at @s run function harpymodloader:game/vote/secondary/particle/vote_particle_5
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=6}] at @s run function harpymodloader:game/vote/secondary/particle/vote_particle_6

execute as @e[type=exposure:photograph_frame] if score @s function_vote_mapcode_1 matches 1.. if score @s function_vote_mapcode_1 = $A function_vote_mapcode at @s run particle flame ~ ~1.4 ~0.05 0.6 0 0 0 2 force @a
execute as @e[type=exposure:photograph_frame] if score @s function_vote_mapcode_1 matches 1.. if score @s function_vote_mapcode_1 = $A function_vote_mapcode at @s run particle flame ~ ~1.4 ~0.05 -0.6 0 0 0 2 force @a

# 玩家是否准备
execute as @a[scores={temp_1=1..}] run function harpymodloader:game/vote/secondary/ready/8

function harpymodloader:game/vote/secondary/ready/9
execute as @a store result score @s temp_2 run clear @s minecraft:ender_pearl 0
execute as @a[gamemode=adventure] unless score @s temp_2 matches 1 run clear @s ender_pearl
execute as @a[gamemode=adventure] unless score @s temp_2 matches 1 run function harpymodloader:game/vote/secondary/ready/9

kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}]
kill @e[type=ender_pearl]

# 信息展示 (Unit: tick)
execute if score $A timer matches 900 run title @a times 0t 55t 5t
execute if score $A timer matches 900 run title @a title ""
execute if score $A timer matches 900 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e列车将在 \u00a7r\u00a7l45 \u00a7r\u00a7e秒后出发"}]}

execute if score $A timer matches 201 run title @a times 0t 10t 20t
execute if score $A timer matches 0..200 run title @a title ""

execute if score $A timer matches 200..600 unless score $A timer_tick_format matches 0..9 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e启程倒计时 \u00a7r\u00a7l| \u00a7r"},{"score": {"name": "$A","objective": "timer_second"}},{"text": "."},{"score": {"name": "$A","objective": "timer_tick_format"}}]}
execute if score $A timer matches 200..600 if score $A timer_tick_format matches 0..9 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e启程倒计时 \u00a7r\u00a7l| \u00a7r"},{"score": {"name": "$A","objective": "timer_second"}},{"text": "."},{"score": {"name": "$A","objective": "timer_tick_format"}},{"text": "0"}]}

execute if score $A timer matches 0..199 unless score $A timer_tick_format matches 0..9 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e启程倒计时 \u00a7r\u00a7l| \u00a7r0"},{"score": {"name": "$A","objective": "timer_second"}},{"text": "."},{"score": {"name": "$A","objective": "timer_tick_format"}}]}
execute if score $A timer matches 0..119 unless score $A timer_tick_format matches 0..9 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e启程倒计时 \u00a7r\u00a7l| \u00a7e0"},{"score": {"name": "$A","objective": "timer_second"},"color": "yellow"},{"text": "."},{"score": {"name": "$A","objective": "timer_tick_format"},"color": "yellow"}]}
execute if score $A timer matches 0..79 unless score $A timer_tick_format matches 0..9 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e启程倒计时 \u00a7r\u00a7l| \u00a7c0"},{"score": {"name": "$A","objective": "timer_second"},"color": "red"},{"text": "."},{"score": {"name": "$A","objective": "timer_tick_format"},"color": "red"}]}

execute if score $A timer matches 0..199 if score $A timer_tick_format matches 0..9 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e启程倒计时 \u00a7r\u00a7l| \u00a7r0"},{"score": {"name": "$A","objective": "timer_second"}},{"text": "."},{"score": {"name": "$A","objective": "timer_tick_format"}},{"text": "0"}]}
execute if score $A timer matches 0..119 if score $A timer_tick_format matches 0..9 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e启程倒计时 \u00a7r\u00a7l| \u00a7e0"},{"score": {"name": "$A","objective": "timer_second"},"color": "yellow"},{"text": "."},{"score": {"name": "$A","objective": "timer_tick_format"},"color": "yellow"},{"text": "0","color": "yellow"}]}
execute if score $A timer matches 0..79 if score $A timer_tick_format matches 0..9 run title @a subtitle {"text":"","extra": [{"text": "\u00a7e启程倒计时 \u00a7r\u00a7l| \u00a7c0"},{"score": {"name": "$A","objective": "timer_second"},"color": "red"},{"text": "."},{"score": {"name": "$A","objective": "timer_tick_format"},"color": "red"},{"text": "0","color": "red"}]}


execute if score $A timer matches -20 run function harpymodloader:game/vote/finish
execute if score $A timer matches -21 run title @a times 10t 70t 20t