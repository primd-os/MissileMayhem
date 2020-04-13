execute if block -4 101 1 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 0
execute if block -4 101 0 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 1
execute if block -4 101 -1 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 2
execute unless score PrevMap Constants = Map Constants run function missilewars:maps/load_map
scoreboard players operation PrevMap Constants = Map Constants