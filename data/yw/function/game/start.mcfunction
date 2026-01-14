advancement revoke @s only yw:start_game

# Note: 先开始游戏再切换地图 :p
# execute if entity @a[scores={function_vote_mapcode_1=-100000..100000}] run function harpymodloader:commands/raw_modstart
# function harpymodloader:game/vote/finish

execute if score $player_count number matches ..5 run tellraw @s "人数不足，无法开始游戏！\u00a77（需要至少6人）"
execute if score $player_count number matches 6.. run tellraw @s "倒计时进行中..."