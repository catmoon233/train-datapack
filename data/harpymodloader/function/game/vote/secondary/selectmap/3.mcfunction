execute if score @s temp = @s function_vote_mapcode_1 at @s run playsound entity.villager.no master @s ~ ~ ~
execute if score @s temp = @s function_vote_mapcode_1 run scoreboard players set @s temp -1
execute if score @s temp = @s function_vote_mapcode_1 run return 0

execute if score @s temp = @s function_vote_mapcode_2 at @s run playsound entity.villager.no master @s ~ ~ ~
execute if score @s temp = @s function_vote_mapcode_2 run scoreboard players set @s temp -1
execute if score @s temp = @s function_vote_mapcode_2 run return 0

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players operation @s function_vote_mapcode_1 = @s function_vote_mapcode_2
scoreboard players operation @s function_vote_mapcode_2 = @s temp
scoreboard players set @s temp -1