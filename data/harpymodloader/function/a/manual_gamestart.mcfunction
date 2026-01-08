gamerule sendCommandFeedback false

execute if score $A system_mapCode matches 1 run tp @a 5650 75 7681


execute if score $A debug_mode matches 0 run schedule function harpymodloader:commands/raw_modstart 1t append
execute if score $A debug_mode matches 1 run function harpymodloader:commands/raw_modstart