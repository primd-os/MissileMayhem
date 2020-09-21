advancement grant @s only minecraft:adventure/root
advancement grant @s only minecraft:end/root
advancement grant @s only minecraft:husbandry/root
advancement grant @s only minecraft:nether/root
advancement grant @s only minecraft:story/root
scoreboard players set @s Game -1
gamemode survival @s
execute in minecraft:overworld run tp 0 255 0

scoreboard players operation SubSec Variables = @s Timer
scoreboard players operation Sec Variables = SubSec Variables
scoreboard players operation Sec Variables /= TPS Constants
scoreboard players operation SubSec Variables %= TPS Constants
scoreboard players operation SubSec Variables *= CSPT Constants
scoreboard players operation Min Variables = Sec Variables
scoreboard players operation Min Variables /= SPM Constants
scoreboard players operation Sec Variables %= SPM Constants
execute as @s[tag=Parkour] if score SubSec Variables matches ..9 if score Sec Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "Variables"}}]
execute as @s[tag=Parkour] if score SubSec Variables matches ..9 if score Sec Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "Variables"}}]
execute as @s[tag=Parkour] if score SubSec Variables matches 10.. if score Sec Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "Variables"}}]
execute as @s[tag=Parkour] if score SubSec Variables matches 10.. if score Sec Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "Variables"}}]