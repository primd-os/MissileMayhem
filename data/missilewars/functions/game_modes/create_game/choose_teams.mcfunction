execute as @s[tag=!m.FoundGame] in missilewars:games/game1 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game2 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game3 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game4 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game5 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game6 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game
execute as @s[tag=!m.FoundGame] in missilewars:games/game7 unless entity @e[type=marker,x=0,tag=GameMarker] run function missilewars:game_modes/setup_game

execute as @s[scores={m.FutureGameMode=1, CreateGame=1}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/normal/2teams/create_game
execute as @s[scores={m.FutureGameMode=1, CreateGame=2}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/normal/4teams/create_game
execute as @s[scores={m.FutureGameMode=2, CreateGame=1}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/koth/2teams/create_game
execute as @s[scores={m.FutureGameMode=2, CreateGame=2}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/koth/4teams/create_game
execute as @s[scores={m.FutureGameMode=3, CreateGame=1}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/ctf/2teams/create_game
execute as @s[scores={m.FutureGameMode=3, CreateGame=2}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/ctf/4teams/create_game
execute as @s[scores={m.FutureGameMode=4, CreateGame=1}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/race/2teams/create_game
execute as @s[scores={m.FutureGameMode=4, CreateGame=2}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/race/4teams/create_game
execute as @s[scores={m.FutureGameMode=5, CreateGame=1}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/royale/2teams/create_game
execute as @s[scores={m.FutureGameMode=5, CreateGame=2}] at @e[type=marker,tag=m.NewGame] run function missilewars:game_modes/royale/4teams/create_game
tag @e[type=marker,tag=m.NewGame] remove m.NewGame

tag @s remove m.FoundGame
scoreboard players set @s CreateGame 0