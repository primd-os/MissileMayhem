execute as @s[tag=!m.FoundGame] in missilewars:games/game1 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game2 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game3 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game4 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game5 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game6 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game7 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game

execute as @s[scores={CreateGame=1}] at @e[type=marker,tag=m.NewGame] run data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data.team_type set value "2 Teams"
execute as @s[scores={CreateGame=2}] at @e[type=marker,tag=m.NewGame] run data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data.team_type set value "4 Teams"
execute as @s[scores={CreateGame=3}] at @e[type=marker,tag=m.NewGame] run data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data.team_type set value "FFA"

execute as @s[scores={m.FutureGameMode=1}] at @e[type=marker,tag=m.NewGame] run data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data.game_mode set value "Normal"
execute as @s[scores={m.FutureGameMode=2}] at @e[type=marker,tag=m.NewGame] run data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data.game_mode set value "KOTH"
execute as @s[scores={m.FutureGameMode=3}] at @e[type=marker,tag=m.NewGame] run data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data.game_mode set value "CTF"
execute as @s[scores={m.FutureGameMode=4}] at @e[type=marker,tag=m.NewGame] run data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data.game_mode set value "Race"
execute as @s[scores={m.FutureGameMode=5}] at @e[type=marker,tag=m.NewGame] run data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data.game_mode set value "Royale"

execute as @s[scores={CreateGame=1}] at @e[type=marker,tag=m.NewGame] run function missilewars:maps/queue/2teams
execute as @s[scores={CreateGame=2}] at @e[type=marker,tag=m.NewGame] run function missilewars:maps/queue/4teams
execute as @s[scores={CreateGame=3}] at @e[type=marker,tag=m.NewGame] run function missilewars:maps/queue/ffa

execute at @e[type=marker,tag=m.NewGame] run function missilewars:maps/slow_clear_map
execute as @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/create_game/get_sign_location
execute in missilewars:lobby run tellraw @a[x=0] [{"nbt":"data.team_type","entity":"@e[type=marker,tag=m.NewGame]"},{"text":" "},{"nbt":"data.game_mode","entity":"@e[type=marker,tag=m.NewGame]"},{"text":" Game Created by "},{"selector":"@s"}]
execute in missilewars:lobby at @e[type=marker,x=0,tag=m.SignPlacer] run setblock -14 ~ ~ minecraft:oak_wall_sign[facing=east]{Text1:'{"nbt":"data.team_type","entity":"@e[type=marker,tag=m.NewGame]"}',Text2:'{"nbt":"data.game_mode","entity":"@e[type=marker,tag=m.NewGame]"}',Text3:'{"text":"Click to Join","clickEvent":{"action":"run_command","value":"function missilewars:game_modes/join"}}'} destroy
execute in missilewars:lobby run kill @e[type=marker,x=0,tag=m.SignPlacer]

clear @s
execute as @s[scores={CreateGame=1}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/2teams/join_auto
execute as @s[scores={CreateGame=2}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/4teams/join_auto
execute as @s[scores={CreateGame=3}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/ffa/join_auto
tag @e[type=marker,tag=m.NewGame] remove m.NewGame

tag @s remove m.FoundGame
scoreboard players set @s CreateGame 0