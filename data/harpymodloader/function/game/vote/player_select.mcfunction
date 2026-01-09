

execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches -1 if score @s function_vote_mapcode_2 matches -1 run function harpymodloader:game/vote/secondary/selectmap/1

execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches 0.. if score @s function_vote_mapcode_2 matches -1 run function harpymodloader:game/vote/secondary/selectmap/2

execute as @a if score @s temp matches 0.. if score @s function_vote_mapcode_1 matches 0.. if score @s function_vote_mapcode_2 matches 0.. run function harpymodloader:game/vote/secondary/selectmap/3

### 地图计算票数
scoreboard players set $A function_vote_mapcode 0
scoreboard players set $A function_vote_mapcode_display_0 0
scoreboard players set $A function_vote_mapcode_display_1 0
scoreboard players set $A function_vote_mapcode_display_2 0
scoreboard players set $A function_vote_mapcode_display_3 0
scoreboard players set $A function_vote_mapcode_display_4 0
scoreboard players set $A function_vote_mapcode_display_5 0


execute as @a[scores={function_vote_mapcode_1=0}] run scoreboard players add $A function_vote_mapcode_display_0 1
execute as @a[scores={function_vote_mapcode_2=0}] run scoreboard players add $A function_vote_mapcode_display_0 1

execute as @a[scores={function_vote_mapcode_1=1}] run scoreboard players add $A function_vote_mapcode_display_1 1
execute as @a[scores={function_vote_mapcode_2=1}] run scoreboard players add $A function_vote_mapcode_display_1 1

execute as @a[scores={function_vote_mapcode_1=2}] run scoreboard players add $A function_vote_mapcode_display_2 1
execute as @a[scores={function_vote_mapcode_2=2}] run scoreboard players add $A function_vote_mapcode_display_2 1

execute as @a[scores={function_vote_mapcode_1=3}] run scoreboard players add $A function_vote_mapcode_display_3 1
execute as @a[scores={function_vote_mapcode_2=3}] run scoreboard players add $A function_vote_mapcode_display_3 1

execute as @a[scores={function_vote_mapcode_1=4}] run scoreboard players add $A function_vote_mapcode_display_4 1
execute as @a[scores={function_vote_mapcode_2=4}] run scoreboard players add $A function_vote_mapcode_display_4 1

execute as @a[scores={function_vote_mapcode_1=5}] run scoreboard players add $A function_vote_mapcode_display_5 1
execute as @a[scores={function_vote_mapcode_2=5}] run scoreboard players add $A function_vote_mapcode_display_5 1

### 显示票数

scoreboard players operation $A function_vote_mapcode = $A function_vote_mapcode_display_0

function harpymodloader:game/vote/secondary/sort/5
function harpymodloader:game/vote/secondary/sort/5
function harpymodloader:game/vote/secondary/sort/5
function harpymodloader:game/vote/secondary/sort/5
function harpymodloader:game/vote/secondary/sort/5
function harpymodloader:game/vote/secondary/sort/5



execute if score $A function_vote_mapcode = $A function_vote_mapcode_display_0 run scoreboard players set $A system_mapCode 0
execute if score $A function_vote_mapcode = $A function_vote_mapcode_display_1 run scoreboard players set $A system_mapCode 1
execute if score $A function_vote_mapcode = $A function_vote_mapcode_display_2 run scoreboard players set $A system_mapCode 2
execute if score $A function_vote_mapcode = $A function_vote_mapcode_display_3 run scoreboard players set $A system_mapCode 3
execute if score $A function_vote_mapcode = $A function_vote_mapcode_display_4 run scoreboard players set $A system_mapCode 4
execute if score $A function_vote_mapcode = $A function_vote_mapcode_display_5 run scoreboard players set $A system_mapCode 5

title @a actionbar {"text": "","extra": [{"text": "\u00a7r海盗船 "},{"score": {"name": "$A","objective": "function_vote_mapcode_display_0"},"color": "gray"},{"text": " \u00a7r| \u00a7r飞艇 "},{"score": {"name": "$A","objective": "function_vote_mapcode_display_1"},"color": "gray"},{"text": " \u00a7r| \u00a7r星穹列车V2 "},{"score": {"name": "$A","objective": "function_vote_mapcode_display_2"},"color": "gray"},{"text": " \u00a7r| \u00a7r原版 "},{"score": {"name": "$A","objective": "function_vote_mapcode_display_3"},"color": "gray"},{"text": " \u00a7r| \u00a7r星穹列车放大化 "},{"score": {"name": "$A","objective": "function_vote_mapcode_display_4"},"color": "gray"},{"text": " \u00a7r| \u00a7r随机 "},{"score": {"name": "$A","objective": "function_vote_mapcode_display_5"},"color": "gray"}]}

### TODO：显示选中
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


execute as @e[type=exposure:photograph_frame] if score @s function_vote_mapcode = $A function_vote_mapcode at @s run particle flame ~ ~1.4 ~0.05 0.6 0 0 0 2 force @a
execute as @e[type=exposure:photograph_frame] if score @s function_vote_mapcode = $A function_vote_mapcode at @s run particle flame ~ ~1.4 ~0.05 -0.6 0 0 0 2 force @a
