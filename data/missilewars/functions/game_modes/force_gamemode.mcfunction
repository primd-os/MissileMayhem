execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=0}] run effect give @s resistance 1 255 true
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=0}] run gamemode adventure @s[team=!Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=1}] unless score @s m.RespawnTimer matches 0.. run gamemode survival @s[team=!Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=1}] if score @s m.RespawnTimer matches 0.. run gamemode spectator @s[team=!Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=1}] if score @s m.RespawnTimer matches -1 run function missilewars:game_modes/teamtp
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=2..}] run gamemode spectator @s[team=!Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=1..}] run gamemode spectator @s[team=Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=0}] run attribute @s minecraft:generic.knockback_resistance base set 1.0
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=1..}] run attribute @s minecraft:generic.knockback_resistance base set 0.0
scoreboard players operation @s m.RespawnTimeSec = @s m.RespawnTimer
scoreboard players operation @s m.RespawnTimeSec /= TPS m.Constants
scoreboard players add @s m.RespawnTimeSec 1
scoreboard players operation RespawnTimeInSec m.Variables = @s m.RespawnTimer
scoreboard players operation RespawnTimeInSec m.Variables %= TPS m.Constants
execute if score RespawnTimeInSec m.Variables matches 0 run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 0.5 2 1
execute if entity @e[type=area_effect_cloud,tag=GameMarker,sort=nearest,x=0,scores={m.GameState=1}] if score @s m.RespawnTimer matches 0.. run title @s title {"score": {"name": "@s","objective": "m.RespawnTimeSec"}}
execute if score @s m.RespawnTimer matches -1.. run scoreboard players remove @s m.RespawnTimer 1