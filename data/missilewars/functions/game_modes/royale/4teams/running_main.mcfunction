function missilewars:game_modes/force_gamemode

execute as @s[scores={m.deathCheck=1..1000}] at @s run scoreboard players set @s m.RespawnTimer 1000000
execute as @s[scores={m.deathCheck=1..1000}] at @s run tag @s add m.RoyaleDead
execute as @s[scores={m.deathCheck=1..1000}] at @s run function missilewars:game_modes/death

effect give @s minecraft:haste 2 2 true
effect give @s[scores={m.foodLevel=..19}] minecraft:saturation 1 0 true

function missilewars:main/shared_run_main
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] actionbar {"text": "✥"}
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] actionbar {"text": "↑"}

function missilewars:game_modes/4teams/team_join_triggers

execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0