tellraw @s {"text":"Missile Sets - Click to Switch:","bold":true,"underlined":true,"color":"#FF0000"}
tellraw @s [{"text":" \u0020 1. ","color":"gray"},{"color":"green","text":"Normal","clickEvent":{"action":"run_command","value":"/trigger ChooseMissileSet set 0"}}]
tellraw @s [{"text":" \u0020 2. ","color":"gray"},{"color":"green","text":"Old","clickEvent":{"action":"run_command","value":"/trigger ChooseMissileSet set 1"}}]
tellraw @s [{"text":" \u0020 3. ","color":"gray"},{"color":"green","text":"Thin","clickEvent":{"action":"run_command","value":"/trigger ChooseMissileSet set 2"}}]
tellraw @s [{"text":" \u0020 4. ","color":"gray"},{"color":"green","text":"Flat","clickEvent":{"action":"run_command","value":"/trigger ChooseMissileSet set 3"}}]