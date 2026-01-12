
### 处理玩家选择地图逻辑

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


title @a actionbar {"text":"","extra":[{"text":"§r随机 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=0}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r飞艇 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=1}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r星穹列车V2 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=2}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r列车 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=3}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r星穹列车 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=4}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r海盗船 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=5}]","objective":"function_vote_mapcode_1"},"color":"gray"},{"text":" §r| §r大列车 "},{"score":{"name":"@e[type=exposure:photograph_frame,scores={function_vote_mapcode=6}]","objective":"function_vote_mapcode_1"},"color":"gray"}]}

### 粒子特效（有优化空间）
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=0}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=0}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=0}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=0}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=0}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=0}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=0}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=0}]

execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=1}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=1}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=1}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=1}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=1}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=1}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=1}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=1}]

execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=2}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=2}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=2}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=2}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=2}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=2}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=2}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=2}]

execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=3}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=3}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=3}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=3}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=3}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=3}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=3}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=3}]

execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=4}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=4}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=4}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=4}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=4}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=4}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=4}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=4}]

execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=5}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=5}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=5}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=5}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=5}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=5}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=5}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=5}]

execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=6}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=6}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=6}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_1=6}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=6}] at @s run particle egg_crack ~ ~-1.4 ~ 0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=6}]
execute as @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=6}] at @s run particle egg_crack ~ ~-1.4 ~ -0.7 0 0 1 1 force @a[scores={function_vote_mapcode_2=6}]


execute as @e[type=exposure:photograph_frame] if score @s function_vote_mapcode_1 matches 1.. if score @s function_vote_mapcode_1 = $A function_vote_mapcode at @s run particle flame ~ ~1.4 ~0.05 0.6 0 0 0 2 force @a
execute as @e[type=exposure:photograph_frame] if score @s function_vote_mapcode_1 matches 1.. if score @s function_vote_mapcode_1 = $A function_vote_mapcode at @s run particle flame ~ ~1.4 ~0.05 -0.6 0 0 0 2 force @a

