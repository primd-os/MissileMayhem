summon minecraft:marker 0 50 75 {Tags: ["Base","BlueBase"]}
summon minecraft:marker 0 50 -75 {Tags: ["Base","GreenBase"]}
execute as @e[type=marker,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~

execute unless entity @e[x=0,type=marker,tag=hub.border] run summon marker 0 1000 0 {Tags:["hub.border"]}
scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0
scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 18000
scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 18000000