execute if score @s function_vote_mapcode matches 0 run tmm:switchmap random
execute if score @s function_vote_mapcode matches 1 run tmm:switchmap load areas2
execute if score @s function_vote_mapcode matches 2 run tmm:switchmap load areas3
execute if score @s function_vote_mapcode matches 3 run tmm:switchmap load areas4
execute if score @s function_vote_mapcode matches 4 run tmm:switchmap load areas5
execute if score @s function_vote_mapcode matches 5 run tmm:switchmap load areas1
execute if score @s function_vote_mapcode matches 6 run tmm:switchmap load areas6

execute if score @s function_vote_mapcode matches 0 run tellraw @a "\u00a77[Broadcast]\u00a7r Wish you a \u00a7egood\u00a7r day."
execute if score @s function_vote_mapcode matches 1 run tellraw @a "\u00a77[Broadcast]\u00a7r Welcome to \u00a7eAirship\u00a7r."
execute if score @s function_vote_mapcode matches 2 run tellraw @a "\u00a77[Broadcast]\u00a7r Welcome to \u00a7eAstral Express Enhanced Edition\u00a7r."
execute if score @s function_vote_mapcode matches 3 run tellraw @a "\u00a77[Broadcast]\u00a7r Welcome to \u00a7eThe Train\u00a7r."
execute if score @s function_vote_mapcode matches 4 run tellraw @a "\u00a77[Broadcast]\u00a7r Welcome to \u00a7eAstral Express\u00a7r."
execute if score @s function_vote_mapcode matches 5 run tellraw @a "\u00a77[Broadcast]\u00a7r Welcome to \u00a7ePirate Ship\u00a7r."
execute if score @s function_vote_mapcode matches 6 run tellraw @a "\u00a77[Broadcast]\u00a7r Welcome to \u00a7eThe Big Train\u00a7r."