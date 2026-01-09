scoreboard objectives add function_vote_mapcode dummy
scoreboard objectives add function_vote_mapcode_1 dummy
scoreboard objectives add function_vote_mapcode_2 dummy

scoreboard players set $A function_vote_mapcode 000000
scoreboard players set @a function_vote_mapcode_1 -1
scoreboard players set @a function_vote_mapcode_2 -1

scoreboard objectives add temp dummy
scoreboard players set @a temp -1

scoreboard players set $A system_gamePlaying 1

scoreboard objectives add function_vote_mapcode_display_0 dummy
scoreboard objectives add function_vote_mapcode_display_1 dummy
scoreboard objectives add function_vote_mapcode_display_2 dummy
scoreboard objectives add function_vote_mapcode_display_3 dummy
scoreboard objectives add function_vote_mapcode_display_4 dummy
scoreboard objectives add function_vote_mapcode_display_5 dummy

/summon exposure:photograph_frame -5.50 1.50 9.03 {Size: 2b, Invisible: 0b, OnGround: 0b, Air: 300s, Invulnerable: 0b, FallDistance: 0.0f, Motion: [0.0d, 0.0d, 0.0d], Rotation: [0.0f, 0.0f], TileZ: 9, FrameItem: {id: "exposure:photograph_frame", count: 1}, Facing: 3b, Fire: -1s, PortalCooldown: 0, TileY: 0, TileX: -7}
/summon exposure:photograph_frame 0.50 1.50 9.03 {Size: 2b, Invisible: 0b, OnGround: 0b, Air: 300s, Invulnerable: 0b, FallDistance: 0.0f, Motion: [0.0d, 0.0d, 0.0d], Rotation: [0.0f, 0.0f], TileZ: 9, FrameItem: {id: "exposure:photograph_frame", count: 1}, Facing: 3b, Fire: -1s, PortalCooldown: 0, TileY: 0, TileX: -1}

execute positioned -5.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=0}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest] function_vote_mapcode 0
execute positioned -2.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=1}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest] function_vote_mapcode 1
execute positioned 0.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=2}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest] function_vote_mapcode 2
execute positioned 3.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=3}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest] function_vote_mapcode 3
execute positioned 6.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=4}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest] function_vote_mapcode 4
execute positioned 9.5 1.5 9.03 run execute unless entity @e[type=exposure:photograph_frame,limit=1,scores={function_vote_mapcode=5}] run scoreboard players set @e[type=exposure:photograph_frame,limit=1,sort=nearest] function_vote_mapcode 5

execute positioned -5.5 1.5 9.03 run tmm:entityData set @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=0}] /scoreboard players set @s temp 0
execute positioned -2.5 1.5 9.03 run tmm:entityData set @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=1}] /scoreboard players set @s temp 1
execute positioned 0.5 1.5 9.03 run tmm:entityData set @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=2}] /scoreboard players set @s temp 2
execute positioned 3.5 1.5 9.03 run tmm:entityData set @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=3}] /scoreboard players set @s temp 3
execute positioned 6.5 1.5 9.03 run tmm:entityData set @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=4}] /scoreboard players set @s temp 4
execute positioned 9.5 1.5 9.03 run tmm:entityData set @e[type=exposure:photograph_frame,limit=1,sort=nearest,scores={function_vote_mapcode=5}] /scoreboard players set @s temp 5

# system_mapCode -> Code of current map
#  1 = 海盗船       areas1
#  2 = 飞艇         areas2
#  3 = 星穹列车V2   areas3
#  4 = 原版         areas4
#  5 = 星穹列车放大化areas5
#  0 = 随机         random