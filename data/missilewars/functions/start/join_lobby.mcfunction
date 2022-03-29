function missilewars:main/clear_inv

function missilewars:start/give_book
scoreboard players enable @s ChooseMissileSet
scoreboard players set @s m.Game 0
execute in missilewars:lobby run tp @s 10 108 40
execute in missilewars:lobby positioned 10 108 40 run function hub:main/death/spawnpoint

team leave @s
effect give @s instant_health 1 100
team join m.Lobby @s


scoreboard players set @s[tag=!PlayedBefore] m.DirectionPlace 0
team join m.Lobby @s[tag=!PlayedBefore]
scoreboard players set @s[tag=!PlayedBefore] m.Game 0
execute as @s[tag=!PlayedBefore] run function missilewars:custom_missile/set_default
tag @s[tag=!PlayedBefore] add PlayedBefore