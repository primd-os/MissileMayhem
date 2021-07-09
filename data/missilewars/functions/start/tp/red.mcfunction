execute at @e[type=marker,tag=RedBase,x=0] facing 0 52 0 run tp @s ~-1 51 ~ ~ ~
execute at @e[type=marker,tag=RedBase,x=0] positioned ~-1 51 ~ facing 0 52 0 run function hub:main/death/spawnpoint
execute unless entity @e[type=marker,tag=RedBase,x=0] at @e[type=marker,tag=BlueBase,x=0] positioned ~0 51 ~-1 facing 0 52 0 run function hub:main/death/spawnpoint
execute unless entity @e[type=marker,tag=RedBase,x=0] at @e[type=marker,tag=BlueBase,x=0] facing 0 52 0 run tp @s ~0 51 ~-1