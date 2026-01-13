
function harpymodloader:init/ini
tellraw @a[scores={debug_mode=1..}] "\u00a77---------------------------"
tellraw @a[scores={debug_mode=1..}] "SR-TMM | 0.1.0 init RC(\u00a7e1\u00a7r)\u00a7r - \u00a77 GameStages"
tellraw @a[scores={debug_mode=1..}] "\u00a77---------------------------"

# debug_mode 日志输出给OP看 | ⚠数值不会重置
scoreboard players set Seaside_H1 debug_mode 1

item replace entity @a[scores={debug_mode=1..},limit=1] weapon.mainhand with grass_block[custom_name="{\"text\": \"1\"}",] 1