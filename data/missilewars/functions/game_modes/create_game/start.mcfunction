scoreboard players set @s m.GameCreationStage 1
tellraw @s {"text":"Click game mode to create from list:","bold":true,"underlined":true,"color":"#FF0000"}
tellraw @s [{"text":" \u0020 - ","color":"gray"},{"color":"green","text":"Normal","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 1"}}]
tellraw @s [{"text":" \u0020 - ","color":"gray"},{"color":"green","text":"King of the Hill","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 2"}}]
tellraw @s [{"text":" \u0020 - ","color":"gray"},{"color":"green","text":"Capture the Flag","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 3"}}]
tellraw @s [{"text":" \u0020 - ","color":"gray"},{"color":"green","text":"Race","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 4"}}]
tellraw @s [{"text":" \u0020 - ","color":"gray"},{"color":"green","text":"Royale","clickEvent": {"action": "run_command", "value": "/trigger CreateGame set 5"}}]
scoreboard players set @s CreateGame 0