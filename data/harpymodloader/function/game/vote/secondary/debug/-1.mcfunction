## vote/secondary/debug/-1.mcfunction
 
# 操作变量:
# @postioned : {x,y,z}     ->  初始点位置
# @distance= : {min..max}  ->  与初始点的距离范围

execute positioned -5.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=0}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest] function_vote_mapcode 0
execute positioned -5.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=1}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest,distance=2.8..3.2] function_vote_mapcode 1
execute positioned -5.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=2}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest,distance=5.8..6.2] function_vote_mapcode 2
execute positioned -5.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=3}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest,distance=8.8..9.2] function_vote_mapcode 3
execute positioned -5.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=4}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest,distance=11.8..12.2] function_vote_mapcode 4
execute positioned -5.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=5}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest,distance=14.8..15.2] function_vote_mapcode 5
execute positioned -5.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=6}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest,distance=17.8..18.2] function_vote_mapcode 6

# data modify entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=0}] 