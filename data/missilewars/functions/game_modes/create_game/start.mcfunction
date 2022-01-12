scoreboard players set @s m.GameCreationStage 1
tellraw @s {"text": "Click game mode to create from list:"}
tellraw @s [{"text": "    Normal","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 1"}}]
tellraw @s [{"text": "    KOTH","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 2"}}]
tellraw @s [{"text": "    CTF","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 3"}}]
tellraw @s [{"text": "    Race","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 4"}}]
tellraw @s [{"text": "    Royale","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 5"}}]
scoreboard players set @s CreateGame 0