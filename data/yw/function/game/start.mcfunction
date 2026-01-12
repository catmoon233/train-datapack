advancement revoke @s only yw:start_game

# Note: 先开始游戏再切换地图 :p
execute if entity @a[scores={function_vote_mapcode_1=-100000..100000}] run function harpymodloader:commands/raw_modstart
# function harpymodloader:game/vote/finish
