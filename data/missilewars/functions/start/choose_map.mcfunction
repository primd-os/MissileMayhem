tellraw @s {"text":"Maps - Click to Switch:","bold":true,"underlined":true,"color":"#FF0000"}
tellraw @s [{"text":" \u0020 1. ","color":"gray"},{"color":"green","text":"Normal","clickEvent":{"action":"run_command","value":"/trigger ChooseMap set 0"}}]
tellraw @s [{"text":" \u0020 2. ","color":"gray"},{"color":"green","text":"Small","clickEvent":{"action":"run_command","value":"/trigger ChooseMap set 1"}}]
tellraw @s [{"text":" \u0020 3. ","color":"gray"},{"color":"green","text":"Center Wall","clickEvent":{"action":"run_command","value":"/trigger ChooseMap set 2"}}]
tellraw @s [{"text":" \u0020 4. ","color":"gray"},{"color":"green","text":"Platforms","clickEvent":{"action":"run_command","value":"/trigger ChooseMap set 3"}}]
tellraw @s [{"text":" \u0020 5. ","color":"gray"},{"color":"green","text":"Weak Center","clickEvent":{"action":"run_command","value":"/trigger ChooseMap set 4"}}]
tellraw @s [{"text":" \u0020 6. ","color":"gray"},{"color":"green","text":"Diagonal","clickEvent":{"action":"run_command","value":"/trigger ChooseMap set 5"}}]
tellraw @s [{"text":" \u0020 7. ","color":"gray"},{"color":"green","text":"Towers","clickEvent":{"action":"run_command","value":"/trigger ChooseMap set 6"}}]