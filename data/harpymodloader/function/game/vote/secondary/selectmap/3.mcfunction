execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players operation @s function_vote_mapcode_1 = @s function_vote_mapcode_2
scoreboard players operation @s function_vote_mapcode_2 = @s temp
scoreboard players set @s temp -1