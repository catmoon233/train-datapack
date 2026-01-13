execute if entity @e[type=exposure:photograph_frame,scores={function_vote_mapcode_1=1..}] as @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode_1=1..},sort=random] run function harpymodloader:game/vote/secondary/selectmap/secondary/6
execute if entity @e[type=exposure:photograph_frame,scores={function_vote_mapcode_1=1..}] as @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode_1=1..},sort=random] run return 0

tmm:switchmap random
tellraw @a[scores={debug_mode=1..}] "No valid votes detected, switched map to random"
