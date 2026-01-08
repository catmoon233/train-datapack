
### TODO:集成性能优化 | 玩家投票处理

# tmm:entityData set @e[type=exposure:photograph_frame,limit=1,sort=nearest] /scoreboard players set @s temp 0

execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches -1 run function harpymodloader:game/vote/secondary/selectmap/1
execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches 0.. if score @s function_vote_mapcode_2 matches 0.. run function harpymodloader:game/vote/secondary/selectmap/3
execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches 0.. if score @s function_vote_mapcode_2 matches -1 run function harpymodloader:game/vote/secondary/selectmap/2

### 地图计算票数
scoreboard players set $A function_vote_mapcode 0
execute as @a[scores={function_vote_mapcode_1=0}] run scoreboard players add $A function_vote_mapcode 1
execute as @a[scores={function_vote_mapcode_2=0}] run scoreboard players add $A function_vote_mapcode 1
scoreboard players operation $A function_vote_mapcode *= $10 number
execute as @a[scores={function_vote_mapcode_1=1}] run scoreboard players add $A function_vote_mapcode 1
execute as @a[scores={function_vote_mapcode_2=1}] run scoreboard players add $A function_vote_mapcode 1
scoreboard players operation $A function_vote_mapcode *= $10 number
execute as @a[scores={function_vote_mapcode_1=2}] run scoreboard players add $A function_vote_mapcode 1
execute as @a[scores={function_vote_mapcode_2=2}] run scoreboard players add $A function_vote_mapcode 1
scoreboard players operation $A function_vote_mapcode *= $10 number
execute as @a[scores={function_vote_mapcode_1=3}] run scoreboard players add $A function_vote_mapcode 1
execute as @a[scores={function_vote_mapcode_2=3}] run scoreboard players add $A function_vote_mapcode 1
scoreboard players operation $A function_vote_mapcode *= $10 number
execute as @a[scores={function_vote_mapcode_1=4}] run scoreboard players add $A function_vote_mapcode 1
execute as @a[scores={function_vote_mapcode_2=4}] run scoreboard players add $A function_vote_mapcode 1
scoreboard players operation $A function_vote_mapcode *= $10 number
execute as @a[scores={function_vote_mapcode_1=5}] run scoreboard players add $A function_vote_mapcode 1
execute as @a[scores={function_vote_mapcode_2=5}] run scoreboard players add $A function_vote_mapcode 1

### 显示票数
title @a actionbar {"text": "","extra": [{"score": {"name": "$A", "objective": "function_vote_mapcode"}}]}