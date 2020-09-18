execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=0}] run effect give @s resistance 1 255 true
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=0}] run gamemode adventure @s[team=!Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=1}] unless score @s RespawnTimer matches 0.. run gamemode survival @s[team=!Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=1}] if score @s RespawnTimer matches 0.. run gamemode spectator @s[team=!Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=1}] if score @s RespawnTimer matches 0 run function missilewars:game_modes/teamtp
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=2..}] run gamemode spectator @s[team=!Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=1..}] run gamemode spectator @s[team=Spectator,gamemode=!creative]
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=0}] run attribute @s minecraft:generic.knockback_resistance base set 1.0
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=1..}] run attribute @s minecraft:generic.knockback_resistance base set 0.0
scoreboard players operation @s RespawnTimerSecs = @s RespawnTimer
scoreboard players operation @s RespawnTimerSecs /= TPS Constants
scoreboard players add @s RespawnTimerSecs 1
scoreboard players operation RespawnTimeInSec Variables = @s RespawnTimer
scoreboard players operation RespawnTimeInSec Variables %= TPS Constants
execute if score RespawnTimeInSec Variables matches 0 run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 0.5 2 1
execute if entity @e[type=area_effect_cloud,tag=BlueBase,sort=nearest,x=0,scores={GameState=1}] if score @s RespawnTimer matches 0.. run title @s title {"score": {"name": "@s","objective": "RespawnTimerSecs"}}
execute if score @s RespawnTimer matches 0.. run scoreboard players remove @s RespawnTimer 1