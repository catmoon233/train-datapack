execute if score @s temp = @s function_vote_mapcode_1 at @s run function harpymodloader:game/vote/secondary/selectmap/secondary/4

execute if score @s temp = @s function_vote_mapcode_2 at @s run function harpymodloader:game/vote/secondary/selectmap/secondary/4

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players operation @s function_vote_mapcode_1 = @s function_vote_mapcode_2
scoreboard players operation @s function_vote_mapcode_2 = @s temp
scoreboard players set @s temp -1