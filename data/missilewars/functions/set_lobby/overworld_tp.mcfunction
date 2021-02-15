advancement grant @s only minecraft:adventure/root
advancement grant @s only minecraft:end/root
advancement grant @s only minecraft:husbandry/root
advancement grant @s only minecraft:nether/root
advancement grant @s only minecraft:story/root
advancement grant @s only missilewars:escapee
scoreboard players set @s m.Game -1
gamemode survival @s
execute in minecraft:overworld run tp 0 255 0

scoreboard players operation SubSec m.Variables = @s Timer
scoreboard players operation Sec m.Variables = SubSec m.Variables
scoreboard players operation Sec m.Variables /= TPS m.Constants
scoreboard players operation SubSec m.Variables %= TPS m.Constants
scoreboard players operation SubSec m.Variables *= CSPT m.Constants
scoreboard players operation Min m.Variables = Sec m.Variables
scoreboard players operation Min m.Variables /= SPM m.Constants
scoreboard players operation Sec m.Variables %= SPM m.Constants
execute as @s[tag=Parkour] if score SubSec m.Variables matches ..9 if score Sec m.Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "m.Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "m.Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "m.Variables"}}]
execute as @s[tag=Parkour] if score SubSec m.Variables matches ..9 if score Sec m.Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "m.Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "m.Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "m.Variables"}}]
execute as @s[tag=Parkour] if score SubSec m.Variables matches 10.. if score Sec m.Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "m.Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "m.Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "m.Variables"}}]
execute as @s[tag=Parkour] if score SubSec m.Variables matches 10.. if score Sec m.Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "m.Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "m.Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "m.Variables"}}]