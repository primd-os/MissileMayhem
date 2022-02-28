function missilewars:game_modes/force_gamemode

execute as @s[z=-100,dz=50,x=-200,dx=400,y=0,dy=200,tag=!m.GotRace,gamemode=!spectator] run tellraw @a [{"selector":"@s"},{"text": " has got the goal. Don't let them get back to Spawn!"}]
execute as @s[z=-100,dz=50,x=-200,dx=400,y=0,dy=200,tag=!m.GotRace,gamemode=!spectator] run tag @s add m.GotRace
execute as @s[x=0,tag=m.GotRace] run effect give @s glowing 1 0 true

execute as @s[scores={m.deathCheck=1..1000}] at @s run tag @s remove m.GotRace
execute as @s[scores={m.deathCheck=1..1000}] at @s run tp @s 0 0 0
execute as @s[scores={m.deathCheck=1..1000}] at @s run function missilewars:game_modes/death

effect give @s minecraft:haste 2 2 true
effect give @s[scores={hub.foodLevel=..19}] minecraft:saturation 1 0 true

function missilewars:main/shared_run_main
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] actionbar {"text": "✥"}
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] actionbar {"text": "↑"}

execute as @s[scores={leave=1}] run tag @s remove m.GotRace
execute as @s[scores={leave=1}] run function missilewars:end/leave
execute as @s[scores={leave=1}] run scoreboard players set @s leave 0