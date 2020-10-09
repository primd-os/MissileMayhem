execute store result score newHealth Variables run data get entity @s Health
scoreboard players operation newHealth Variables -= damage Variables
execute if score newHealth Variables matches ..0 run kill @s
execute if score newHealth Variables matches ..10 run attribute @s minecraft:generic.max_health modifier add 1-1-1-1-1 1 -10 add
execute if score newHealth Variables matches ..10 run scoreboard players add newHealth Variables 10
execute if score newHealth Variables matches ..15 run attribute @s minecraft:generic.max_health modifier add 1-1-1-1-2 2 -5 add
execute if score newHealth Variables matches ..15 run scoreboard players add newHealth Variables 5
execute if score newHealth Variables matches ..17 run attribute @s minecraft:generic.max_health modifier add 1-1-1-1-3 3 -2 add
execute if score newHealth Variables matches ..17 run scoreboard players add newHealth Variables 2
execute if score newHealth Variables matches ..18 run attribute @s minecraft:generic.max_health modifier add 1-1-1-1-4 4 -2 add
execute if score newHealth Variables matches ..18 run scoreboard players add newHealth Variables 2
execute if score newHealth Variables matches ..19 run attribute @s minecraft:generic.max_health modifier add 1-1-1-1-5 5 -1 add
execute if score newHealth Variables matches ..19 run scoreboard players add newHealth Variables 1
effect give @s instant_health
tag @s add reset_health
scoreboard players set @s HealthTimer 2