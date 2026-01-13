
execute if score @s function_vote_ready matches 0 run scoreboard players set @s function_vote_ready 6
execute if score @s function_vote_ready matches 1 run scoreboard players set @s function_vote_ready 5

scoreboard players remove @s function_vote_ready 5
scoreboard players set @s temp_1 0