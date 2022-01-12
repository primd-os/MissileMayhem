scoreboard players set @s m.GameCreationStage 2
scoreboard players operation @s m.FutureGameMode = @s CreateGame
tellraw @s {"text": "Click team type to create from list:"}
tellraw @s [{"text": "    2 Teams","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 1"}}]
tellraw @s [{"text": "    4 Teams","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 2"}}]
tellraw @s [{"text": "    FFA","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 3"}}]
scoreboard players set @s CreateGame 0