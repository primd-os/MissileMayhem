effect give @s[predicate=missilewars:holding_wool] minecraft:haste 1 10 true
effect give @s minecraft:haste 2 2 true
effect give @s[scores={hub.foodLevel=..19}] minecraft:saturation 2 0 true

function missilewars:game_modes/force_gamemode

execute as @s[scores={m.deathCheck=1..1000}] at @s run function missilewars:game_modes/death

function missilewars:main/shared_run_main
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] actionbar {"text": "✥"}
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] actionbar {"text": "↑"}

execute as @s[scores={leave=1}] run function missilewars:start/join_lobby
execute as @s[scores={leave=1}] run scoreboard players set @s leave 0