scoreboard players set @s m.GameCreationStage 2
scoreboard players operation @s m.FutureGameMode = @s CreateGame
tellraw @s {"text": "Click team type to create from list:","bold":true,"underlined":true,"color":"#FF0000"}
tellraw @s [{"text":" \u0020 - ","color":"gray"},{"color":"green","text": "2 Teams","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 1"}}]
tellraw @s [{"text":" \u0020 - ","color":"gray"},{"color":"green","text": "4 Teams","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 2"}}]
tellraw @s [{"text":" \u0020 - ","color":"gray"},{"color":"green","text": "FFA","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 3"}}]
scoreboard players set @s CreateGame 0