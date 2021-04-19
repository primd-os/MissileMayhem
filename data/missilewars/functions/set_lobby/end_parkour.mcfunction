advancement grant @s only missilewars:parkour

scoreboard players operation SubSec m.Variables = @s Timer
scoreboard players operation Sec m.Variables = SubSec m.Variables
scoreboard players operation Sec m.Variables /= TPS m.Constants
scoreboard players operation SubSec m.Variables %= TPS m.Constants
scoreboard players operation SubSec m.Variables *= CSPT m.Constants
scoreboard players operation Min m.Variables = Sec m.Variables
scoreboard players operation Min m.Variables /= SPM m.Constants
scoreboard players operation Sec m.Variables %= SPM m.Constants
execute if score SubSec m.Variables matches ..9 if score Sec m.Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "m.Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "m.Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "m.Variables"}}]
execute if score SubSec m.Variables matches ..9 if score Sec m.Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "m.Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "m.Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "m.Variables"}}]
execute if score SubSec m.Variables matches 10.. if score Sec m.Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "m.Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "m.Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "m.Variables"}}]
execute if score SubSec m.Variables matches 10.. if score Sec m.Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "m.Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "m.Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "m.Variables"}}]
tag @s remove Parkour