execute unless score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GameState matches 2.. run tag @s add joining
execute as @s[tag=joining] run function missilewars:game_modes/4teams/join
tellraw @s[tag=!joining] {"color": "red","text": "The game is ending. Please wait."}
execute as @s[tag=!joining] at @s run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0
tag @s remove joining