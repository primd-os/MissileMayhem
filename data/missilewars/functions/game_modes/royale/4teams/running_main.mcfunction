function missilewars:game_modes/force_gamemode

execute as @s[z=-100,dz=50,x=-200,dx=400,y=0,dy=200,tag=!m.GotRace,gamemode=!spectator] run tellraw @a [{"selector":"@s"},{"text": " has got the goal."}]
execute as @s[z=-100,dz=50,x=-200,dx=400,y=0,dy=200,tag=!m.GotRace,gamemode=!spectator] run tag @s add m.GotRace
execute as @s[x=0,tag=m.GotRace] run effect give @s glowing 1 0 true

execute as @s[scores={m.deathCheck=1..1000}] at @s run tag @s remove m.GotRace
execute as @s[scores={m.deathCheck=1..1000}] at @s run tp @s 0 0 0
execute as @s[scores={m.deathCheck=1..1000}] at @s run function missilewars:game_modes/death

effect give @s minecraft:haste 2 2 true
effect give @s[nbt=!{foodLevel:20}] minecraft:saturation 1 0 true

function missilewars:main/shared_run_main
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] actionbar {"text": "✥"}
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] actionbar {"text": "↑"}

execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={JoinBlue=1}] run function missilewars:start/join/blue
execute as @s[scores={JoinBlue=1}] run scoreboard players set @s JoinBlue 0

execute as @s[scores={JoinGreen=1}] run function missilewars:start/join/green
execute as @s[scores={JoinGreen=1}] run scoreboard players set @s JoinGreen 0

execute as @s[scores={JoinRed=1}] run function missilewars:start/join/red
execute as @s[scores={JoinRed=1}] run scoreboard players set @s JoinRed 0

execute as @s[scores={JoinPurple=1}] run function missilewars:start/join/purple
execute as @s[scores={JoinPurple=1}] run scoreboard players set @s JoinPurple 0

execute as @s[scores={Leave=1}] run tag @s remove m.GotRace
execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0