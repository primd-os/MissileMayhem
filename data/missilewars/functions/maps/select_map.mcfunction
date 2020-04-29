execute store result score Map Constants run data get block -4 100 0 Page
execute unless score DirectPrevMap Constants = Map Constants if score Map Constants matches 0 run tellraw @a ["",{"text":"Set Map to: Normal"}]
execute unless score DirectPrevMap Constants = Map Constants if score Map Constants matches 1 run tellraw @a ["",{"text":"Set Map to: No Walls"}]
execute unless score DirectPrevMap Constants = Map Constants if score Map Constants matches 2 run tellraw @a ["",{"text":"Set Map to: Small"}]
execute unless score DirectPrevMap Constants = Map Constants if score Map Constants matches 3 run tellraw @a ["",{"text":"Set Map to: Center Wall"}]
execute unless score DirectPrevMap Constants = Map Constants if score Map Constants matches 4 run tellraw @a ["",{"text":"Set Map to: Platforms"}]
execute unless score DirectPrevMap Constants = Map Constants if score Map Constants matches 5 run tellraw @a ["",{"text":"Set Map to: Weak Center"}]
execute unless score DirectPrevMap Constants = Map Constants if score Map Constants matches 6 run tellraw @a ["",{"text":"Set Map to: Bridge"}]
execute unless score DirectPrevMap Constants = Map Constants unless score PrevMap Constants = Map Constants run schedule function missilewars:maps/load_map 3s replace
scoreboard players operation DirectPrevMap Constants = Map Constants