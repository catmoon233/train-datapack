
execute if score $A function_vote_mapcode matches -2147483648..2147483647 run scoreboard players set @s function_vote_mapcode -1
execute if score $A function_vote_mapcode matches -2147483648..2147483647 run scoreboard players set @s function_vote_mapcode_1 -1
execute if score $A function_vote_mapcode matches -2147483648..2147483647 run scoreboard players set @s function_vote_mapcode_2 -1
execute if score $A function_vote_mapcode matches -2147483648..2147483647 run scoreboard players set @s temp -1
execute if score $A function_vote_mapcode matches -2147483648..2147483647 run scoreboard players set @s function_vote_ready 0
execute if score $A function_vote_mapcode matches -2147483648..2147483647 run scoreboard players set @s temp_1 0
execute if score $A function_vote_mapcode matches -2147483648..2147483647 run scoreboard players set @s temp_2 0


scoreboard players set @s player_enter 0