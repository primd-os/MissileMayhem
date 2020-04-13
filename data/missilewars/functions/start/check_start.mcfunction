execute if block 0 100 0 minecraft:stone_button[powered=true] positioned 0 100 0 as @a[sort=nearest,limit=1] run trigger Start

execute as @a store result score @s shulkerCount run clear @s shulker_box 0
execute if entity @e[scores={Start=1}] as @a[team=!Spectator,scores={shulkerCount=2..2147483647}] run tellraw @a ["",{"text":"Cannot Start, ","color":"red"},{"selector":"@s","color":"red"},{"text":" has too many custom missiles.","color":"red"}]
execute as @e[scores={Start=1}] unless entity @a[team=!Spectator] run tellraw @a {"text":"Cannot start, no players.","color":"red"}
execute as @e[scores={Start=1}] if entity @a[team=!Spectator] unless entity @a[scores={shulkerCount=2..2147483647}] run function missilewars:start/new_game
execute as @e[scores={Start=1}] run scoreboard players set @s Start 0