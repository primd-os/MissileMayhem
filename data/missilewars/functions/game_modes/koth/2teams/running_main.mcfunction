effect give @s[predicate=missilewars:holding_wool] minecraft:haste 1 10 true
effect give @s minecraft:haste 2 2 true
effect give @s[scores={hub.foodLevel=..19}] minecraft:saturation 2 0 true

function missilewars:game_modes/force_gamemode

execute as @s[scores={m.deathCheck=1..1000}] at @s run function missilewars:game_modes/death

function missilewars:main/shared_run_main
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] actionbar [{"score":{"name":"@e[x=0,tag=GameMarker,limit=1]","objective":"m.BlueScore"},"color":"blue"},{"text": " ✥ ","color":"white"},{"score":{"name":"@e[x=0,tag=GameMarker,limit=1]","objective":"m.GreenScore"},"color":"dark_green"}]
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] actionbar [{"score":{"name":"@e[x=0,tag=GameMarker,limit=1]","objective":"m.BlueScore"},"color":"blue"},{"text": " ↑ ","color":"white"},{"score":{"name":"@e[x=0,tag=GameMarker,limit=1]","objective":"m.GreenScore"},"color":"dark_green"}]

function missilewars:game_modes/2teams/team_join_triggers

execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0